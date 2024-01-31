import 'package:bookly_app/features/Home/domain/entities/book_entity.dart';


abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> books;
  NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksState {
  final String error;
  NewestBooksFailure(this.error);
}