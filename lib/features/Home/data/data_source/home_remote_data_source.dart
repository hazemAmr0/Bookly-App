import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_sevices.dart';
import 'package:bookly_app/core/utils/functions/save_books_data.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> getFeaturedBooks();
  Future<List<BookEntity>> getNewestBooks();
}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
 final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> getFeaturedBooks()async { 
var data= await apiService.getBooks(endpoint: 'volumes?Filtering=free-ebooks&q=programming');
 List<BookEntity> books = GetBooksList(data);
 SaveBooksData(books, featuredBox);
  return books;
 
  }

 


  
  @override
  Future<List<BookEntity>> getNewestBooks() async{
  var data=await apiService.getBooks(endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
  List<BookEntity> books = GetBooksList(data);
  SaveBooksData(books, newestBox);
  return books;
 
  }

  
    List<BookEntity> GetBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));

    }
    return books;
  }
 
  }