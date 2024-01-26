// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColor, this.borderRadius, required this.text, required this.textColor, required Null Function() onPressed,
  }) : super(key: key);
final Color textColor;
final String text;
final Color backgroundColor;
final BorderRadius? borderRadius; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
      
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius??  BorderRadius.circular(16),
          ),
        ),
      onPressed: (){},
       child:  Text (text,
       style:Styles.textStyleSemiBold18.copyWith(color: textColor),
       ),
      ),
    );
  }
}
