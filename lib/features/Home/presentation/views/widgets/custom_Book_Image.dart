import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
