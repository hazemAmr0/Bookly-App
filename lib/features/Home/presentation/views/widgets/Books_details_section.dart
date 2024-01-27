import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/Books_actions.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 30),
        const Text('Laundry Man ', style: Styles.textStyleNormal30),
        const SizedBox(height: 4),
        Text('Jake needham',
            style: Styles.textStyleNormal14.copyWith(
              fontStyle: FontStyle.italic,
              fontSize: 16,
              color: Colors.grey[500],
            )),
        const SizedBox(height: 10),
        const BookRate(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 20),
        const BooksActions(),
      ],
    );
  }
}
