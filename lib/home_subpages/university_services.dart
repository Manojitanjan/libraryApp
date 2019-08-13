import 'package:flutter/material.dart';
import 'package:library_kelaniya/university_services_subpages/university_services_menu_list.dart';

class UniversityServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0), // here the desired height
          child: AppBar(
            title: Text('University Services'),
            centerTitle: true,
          )
        ),
      body: Container(
        height: 520.0,
        child: UniversityServicesMenuList(),
      ),
    );
  }
}
