import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://shoes-collections.p.rapidapi.com/';
  final Dio _dio;

  ApiService(this._dio) {
    _dio.options.headers['x-rapidapi-key'] =
    'fe1cd33a9bmshe4a84e7bc6e1e02p1a2f89jsn27723aa8ad9c'; // Replace with your RapidAPI Key
    _dio.options.headers['x-rapidapi-host'] =
    'shoes-collections.p.rapidapi.com';
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
