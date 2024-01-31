import 'package:bloc/bloc.dart';

import 'package:bookly_app/features/Home/domain/usecases/get_Newest_Books_use_case.dart';
import 'package:bookly_app/features/Home/presentation/manager/newest_books_cubit/newest_books_state.dart';




class NewestBooksCubit extends Cubit<NewestBooksState> {
  final GetNewestBooksUseCse getNewestBooksUseCase;

  NewestBooksCubit(this.getNewestBooksUseCase) : super(NewestBooksInitial());

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await getNewestBooksUseCase.call();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.toString())),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
