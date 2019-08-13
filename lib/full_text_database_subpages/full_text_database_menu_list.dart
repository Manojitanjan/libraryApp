import 'package:flutter/material.dart';
import 'package:library_kelaniya/full_text_database_subpages/ebsco_host.dart';
import 'package:library_kelaniya/full_text_database_subpages/emerald_group_publishing.dart';
import 'package:library_kelaniya/full_text_database_subpages/jstor.dart';
import 'package:library_kelaniya/full_text_database_subpages/oxford_university_press.dart';
import 'package:library_kelaniya/full_text_database_subpages/scopus.dart';
import 'package:library_kelaniya/full_text_database_subpages/willey_online_library.dart';

class FullTextDatabaseMenuList extends StatefulWidget {
  @override
  _FullTextDatabaseMenuListState createState() =>
      _FullTextDatabaseMenuListState();
}

var databasesList = [
  {"name": "EBSCO HOST", "comp": new EbscoHost()},
  {"name": "Emerald Group Publishing", "comp": new EmeraldGroupPublishing()},
  {"name": "Scopus", "comp": new Scopus()},
  {"name": "JSTOR", "comp": new Jstor()},
  {"name": "Willey Online Library", "comp": new WilleyOnlineLibrary()},
  {"name": "Oxford University Press ", "comp": new OxfordUniversityPress()}
];

class _FullTextDatabaseMenuListState extends State<FullTextDatabaseMenuList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: databasesList.length,
      itemBuilder: (BuildContext context, int index) {
        return FullTextDatabaseMenu(
          databaseName: databasesList[index]['name'],
          databasePage: databasesList[index]['comp'],
          index: index,
        );
      },
    );
  }
}

class FullTextDatabaseMenu extends StatelessWidget {
  final databaseName;
  final databasePage;
  final index;

  FullTextDatabaseMenu({this.databaseName, this.databasePage, this.index});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Hero(
        tag: index,
        child: Material(
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: Color(0x802196F3),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (context) => databasePage,
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text(
                databaseName,
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
