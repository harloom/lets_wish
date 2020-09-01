

import 'package:flutter/material.dart';

class SearchView extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
      icon: Icon(Icons.clear),
      onPressed: (){

      },
    )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        //dispose stream or animation
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
      return SafeArea(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
          onTap: (){

          },
          title: Text('Hasil :  $query'),
        ),
      );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
      onTap: (){

      },
      title: Text('Sugestion :  $query'),
    );
  }

}