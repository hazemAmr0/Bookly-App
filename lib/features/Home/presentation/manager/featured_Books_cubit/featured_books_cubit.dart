import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/domain/usecases/get_Featured_Books_use_case.dart';
import 'package:bookly_app/features/Home/presentation/manager/featured_Books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.getFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());
  final GetFeaturedBooksUseCase getFeaturedBooksUseCase;
  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await getFeaturedBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.toString()));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
