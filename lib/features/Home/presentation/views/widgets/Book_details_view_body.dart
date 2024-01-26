import 'package:bookly_app/features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_Book_Image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    return   Column(
      children: [
       const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.27),
          child:const CustomBookImage(),
        ), 
       ],

    );
   
  }
}