import 'package:bookly_app/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/features/Splash/data/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      CustomAppBar(),
      SizedBox(
        height: 18,
      ),
      FeaturedBooksListView(),
    ]);
  }
}




