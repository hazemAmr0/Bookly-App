import 'package:bookly_app/features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'Books_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSection(),
                Expanded(child: SizedBox(height: 30)),
                SimilarBooksSection(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
