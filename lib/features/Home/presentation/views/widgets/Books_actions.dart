import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: '19.99\$',
              onPressed: () {},
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomButton(
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              text: 'Free preview',
              onPressed: () {},
              backgroundColor: const Color(0xffEF8262),
            ),
          ),
        ],
      ),
    );
  }
}
