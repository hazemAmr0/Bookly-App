import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(bookDetailsView);
      },
      child: SizedBox(
        
        child: AspectRatio(
          aspectRatio: 3.5 / 5.5,
          child: Container(
            height: 100,
            width: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppAssets.bookCover),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
