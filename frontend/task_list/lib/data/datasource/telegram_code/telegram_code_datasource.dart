import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto_s/telegram_code/telegram_code_response/telegram_code_response_dto.dart';

part 'telegram_code_datasource.g.dart';

@RestApi(baseUrl: 'http://192.168.25.195:8000/api/v1')
abstract class TelegramCodeDatasource {
  factory TelegramCodeDatasource(Dio dio) = _TelegramCodeDatasource;

  @POST('/telegram_code/generate')
  Future<TelegramCodeResponseDTO> generateTelegramCode(
      @Header("accept") String accept,
      @Header("Authorization") String authorization);

}