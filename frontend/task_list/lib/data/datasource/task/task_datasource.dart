import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../dto_s/task/task_response/task_response_dto.dart';

part 'task_datasource.g.dart';

@RestApi(baseUrl: 'http://192.168.100.5:8000/api/v1')
abstract class TaskDatasource {
  factory TaskDatasource(Dio dio) = _TaskDatasource;

  @POST('/task')
  Future<TaskResponseDTO> pushTask(
      @Header("accept") String accept,
      @Header("Authorization") String authorization,
      @Body() Map<String, dynamic> request);
  
  @DELETE('/task/{id}')
  Future<void> deleteTask(
      @Header("accept") String accept,
      @Header("Authorization") String authorization,
      @Path('id') String id);

  @GET('/task')
  Future<List<TaskResponseDTO>> getAllTask(
      @Header("accept") String accept,
      @Header("Authorization") String authorization,);
}