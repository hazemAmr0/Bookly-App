import 'package:flutter/material.dart';

import 'package:bookly_app/features/Home/domain/entities/book_entity.dart';



@immutable
abstract class FeaturedBooksState {}
class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;
  FeaturedBooksSuccess(this.books);
}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String error;
  FeaturedBooksFailure(this.error);
}