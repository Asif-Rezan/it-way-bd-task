abstract class BaseApiServices {
  Future<dynamic> getTask(String endpoint);
  Future<dynamic> postTask(String endpoint, dynamic data);
  Future<dynamic> updateTask(String endpoint, Map<String, dynamic> data);
}
