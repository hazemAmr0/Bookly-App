import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:bookly_app/features/Home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/Home/domain/repos/home_reop.dart';
import 'package:dartz/dartz.dart';

class GetNewestBooksUseCse extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  GetNewestBooksUseCse(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? params]) async {
    return await homeRepo.getNewestBooks();
  }
}
