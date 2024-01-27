import 'package:bookly_app/features/search/presentation/view/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Expanded(child: SearchResultListView()),
           SizedBox(height: 20),
        ],
      ),
    );
  }
}

