import 'package:dio/dio.dart';

class ApiRequest {
  final _baseUrl = 'https://newsdata.io/api/1/';
  final Dio _dio;

  ApiRequest(this._dio);

  Future<Map<String, dynamic>> getNews({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}

