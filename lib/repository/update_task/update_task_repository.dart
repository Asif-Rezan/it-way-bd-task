import 'package:it_way_bd_task/config/app_url.dart';
import 'package:it_way_bd_task/data/network/network_services_api.dart';

class UpdateTaskRepository {
  final _api = NetworkServicesApi();

  /// Update Task API Call
  Future<void> updateTask(int id, bool completed) async {
    final String url = "${AppUrl.updateTask}/$id";
    final Map<String, dynamic> body = {"completed": completed};

    try {
      final response = await _api.updateTask(url, body);
      print('API Response: $response');
    } catch (e) {
      print("Error updating task: $e");
      throw Exception("Failed to update task");
    }
  }
}
