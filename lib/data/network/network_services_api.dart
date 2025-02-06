import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:it_way_bd_task/data/exceptions/app_exceptions.dart';
import 'package:it_way_bd_task/data/network/base_api_services.dart';
import 'package:it_way_bd_task/utils/app_utils.dart';

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String endpoint) async {
    dynamic jsonResponse;

    try {
      final response = await http
          .get(Uri.parse('$baseUrl/$endpoint'))
          .timeout(Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Timeout');
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String endpoint, data) async {
    dynamic jsonResponse;

    try {
      final response = await http
          .post(Uri.parse('$baseUrl/$endpoint'), body: data)
          .timeout(Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Timeout');
    }

    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
