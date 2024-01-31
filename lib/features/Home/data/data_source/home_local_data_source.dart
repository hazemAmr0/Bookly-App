import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/Home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
 List<BookEntity> getFeaturedBooks();
  List<BookEntity> getNewestBooks();
} 

class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> getFeaturedBooks() {
    
  var Box = Hive.box<BookEntity>(featuredBox);
  return Box.values.toList();
  }

  @override
  List<BookEntity> getNewestBooks() {
    
  var Box = Hive.box<BookEntity>(newestBox);
  return Box.values.toList();
  }
  
}