import 'package:it_way_bd_task/config/app_url.dart';
import 'package:it_way_bd_task/data/models/task/task_model.dart';
import 'package:it_way_bd_task/data/network/network_services_api.dart';

class TaskRepository {
  final _api = NetworkServicesApi();

  Future<List<TaskModel>> getTasks() async {
    final response = await _api.getTask(AppUrl.tasks);
    print('API Response: $response');

    if (response != null) {
      
      if (response is Map && response.containsKey('todos')) {
        var taskList = response['todos'] as List;
        return taskList.map((task) => TaskModel.fromJson(task)).toList();
      } else {
        throw Exception('Key "todos" not found in response or unexpected response format');
      }
    } else {
      throw Exception('Failed to load tasks');
    }
  }
}
