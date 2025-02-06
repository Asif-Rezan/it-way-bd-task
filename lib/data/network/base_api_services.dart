abstract class BaseApiServices {
  Future<dynamic> getApi(String endpoint);
  Future<dynamic> postApi(String endpoint, dynamic data);
}
