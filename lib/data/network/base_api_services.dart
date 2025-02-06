abstract class BaseApiServices {
  Future<dynamic> getTask(String endpoint);
  Future<dynamic> postTask(String endpoint, dynamic data);
}
