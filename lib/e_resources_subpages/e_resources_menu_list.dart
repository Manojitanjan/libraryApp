import 'package:flutter/material.dart';
import 'package:library_kelaniya/e_resources_subpages/ebooks.dart';
import 'package:library_kelaniya/e_resources_subpages/e_journals.dart';
import 'package:library_kelaniya/e_resources_subpages/thesis_dissertation.dart';

class EResourcsMenuList extends StatefulWidget {
  @override
  _EResourcsMenuListState createState() => _EResourcsMenuListState();
}

var eResoucesList = [
  {"name": "E Books", "comp": new EBooks()},
  {"name": "E Journals", "comp": new EJournals()},
  {"name": "Thesis and Dissertation", "comp": new ThesisDissertation()}
];

class _EResourcsMenuListState extends State<EResourcsMenuList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: eResoucesList.length,
      itemBuilder: (BuildContext context, int index) {
        return EResourcesMenu(
          serviceName: eResoucesList[index]['name'],
          servicePage: eResoucesList[index]['comp'],
          index: index,
        );
      },
    );
  }
}

class EResourcesMenu extends StatelessWidget {
  final serviceName;
  final servicePage;
  final index;

  EResourcesMenu({this.serviceName, this.servicePage, this.index});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Hero(
        tag: index,
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: Color(0x802196F3),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (context) => servicePage,
                ),
              );
            },
            child: ListTile(
              leading: Image.asset('assets/kelaniya.png'),
              title: Text(
                serviceName,
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
