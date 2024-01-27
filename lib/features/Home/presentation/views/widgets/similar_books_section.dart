import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            " You can also like",
            style:
                Styles.textStyleNormal14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 9),
          child: SimilarBooksListView(),
        ),
      ],
    );
  }
}
