import 'package:flutter/material.dart';
import 'package:library_kelaniya/full_text_database_subpages/full_text_database_menu_list.dart';

class FullTextDatabases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0), // here the desired height
          child: AppBar(
            title: Text('Full Text Databases'),
            centerTitle: true,
          )
        ),
      body: Container(
        height: 520.0,
        child: FullTextDatabaseMenuList(),
      ),
    );
  }
}
