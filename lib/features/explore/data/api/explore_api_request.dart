import 'package:dio/dio.dart';

class ExploreApiRequest{
  final _baseUrl='https://newsapi.org/v2/';
  final Dio _dio;

  ExploreApiRequest(this._dio);
  Future<Map<String,dynamic>> exploreNews({required String endPoint})async{
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}