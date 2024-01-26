import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      CustomAppBar(),
      SizedBox(
        height: 18,
      ),
      FeaturedBooksListView(),
      SizedBox( height: 40),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Text('Best Seller',style: Styles.titleMedium,),
      )
    ]);
  }
}




