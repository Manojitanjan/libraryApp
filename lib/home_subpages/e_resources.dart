import 'package:flutter/material.dart';
import 'package:library_kelaniya/e_resources_subpages/e_resources_menu_list.dart';

class EResources extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0), // here the desired height
          child: AppBar(
            title: Text('E Resources'),
            centerTitle: true,
          )
        ),
      body: Container(
        height: 520.0,
        child: EResourcsMenuList(),
      ),
    );
  }
}