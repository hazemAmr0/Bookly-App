import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset(
            AppAssets.splashLogo,
            height: 50,
            width: 50,
            color: Colors.white,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(searchView);
              },
              icon: const Icon(Icons.search, size: 30)),
        ]),
      ),
    );
  }
}
