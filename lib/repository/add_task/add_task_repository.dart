import 'package:it_way_bd_task/config/app_url.dart';
import 'package:it_way_bd_task/data/models/add_task/add_task_model.dart';
import 'package:it_way_bd_task/data/network/network_services_api.dart';

class AddTaskRepository {
  final _api = NetworkServicesApi();

  Future<AddTaskModel> addTask(AddTaskModel task) async {
    final response = await _api.postTask(
      AppUrl.addTask, 
      task.toJson(), 
    );

    if (response != null) {
      return AddTaskModel.fromJson(response); 
    } else {
      throw Exception('Failed to add task');
    }
  }
}
