import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException dioError) {
  switch(dioError.type){


    case DioExceptionType.connectionTimeout:
     return ServerFailure('Connection Timeout');

    case DioExceptionType.sendTimeout:
  return ServerFailure('Send Timeout');
    case DioExceptionType.receiveTimeout:
      return ServerFailure('Receive Timeout');
    case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
    case DioExceptionType.badResponse:
     return ServerFailure.Response(dioError.response!.statusCode, dioError.response!.data);
    case DioExceptionType.cancel:
     return ServerFailure('Request Cancelled');
    case DioExceptionType.connectionError:
      return ServerFailure('Connection Error');
    case DioExceptionType.unknown:
      return ServerFailure('Unknown Error');  
  }
  }
  factory ServerFailure.Response(int? statusCode,dynamic response) {
    if(statusCode==404){
      return ServerFailure('Not Found');
    }
    else if(statusCode==401){
      return ServerFailure('Unauthorized');
    }
    else if(statusCode==403){
      return ServerFailure('Forbidden');
    }
    else if(statusCode==500){
      return ServerFailure('Internal Server Error');
    }
    else if(statusCode==503){
      return ServerFailure('Service Unavailable');
    }
    else if(statusCode==504){
      return ServerFailure('Gateway Timeout');
    }
    else{
      return ServerFailure('Unknown Error');

    }

  }
}