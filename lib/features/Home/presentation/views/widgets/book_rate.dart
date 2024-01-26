import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
   const     SizedBox(
          width: 6.3,
        ),
  const      Text(
          '4.8',
          style: Styles.textStyleMedium16,
        ),
  const      SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
            style: Styles.textStyleNormal14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
