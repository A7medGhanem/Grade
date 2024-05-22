import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [ IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_rounded))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: (){}, icon:const Icon(Icons.clear_outlined));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return const Text('ابحث عن سيارتك',style: TextStyle(color: Colors.black87),);
  }

}