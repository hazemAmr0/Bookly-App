import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/features/Home/data/data_source/home_remote_data_source.dart';
import 'package:bookly_app/features/Home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/Home/domain/repos/home_reop.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  @override
  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});
  Future<Either<Failure, List<BookEntity>>> getFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.getFeaturedBooks();
      return right(books);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.getNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.getNewestBooks();
      return right(books);
    } catch (e) {
     if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
