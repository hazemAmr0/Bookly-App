// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiService {
final Dio dio;
  ApiService(
     this.dio,
  );
final baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String,dynamic>> getBooks({required String endpoint}) async {
    
      final response = await dio.get(
        '$baseUrl$endpoint',
      );
      return response.data;
 
  }
}
