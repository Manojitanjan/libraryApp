import 'package:flutter/material.dart';
import 'package:library_kelaniya/home_subpages/e_resources.dart';
import 'package:library_kelaniya/home_subpages/full_text_databases.dart';
import 'package:library_kelaniya/home_subpages/past_papers.dart';
import 'package:library_kelaniya/home_subpages/university_services.dart';

class HomeMenuList extends StatefulWidget {
  @override
  _HomeMenuListState createState() => _HomeMenuListState();
}

var servicelist = [
  {
    "name": "University Services",
    "photo": "assets/services/library_services.jpg",
    "comp": new UniversityServices()
  },
  {
    "name": "Full Text Databases",
    "photo": "assets/services/full_text.jpg",
    "comp": new FullTextDatabases()
  },
  {
    "name": "E Rescources",
    "photo": "assets/services/e_resources.png",
    "comp": new EResources()
  },
  {
    "name": "Past Papers",
    "photo": "assets/services/past_papers.png",
    "comp": new PastPapers()
  },
];

class _HomeMenuListState extends State<HomeMenuList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: servicelist.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return LibraryServices(
            serviceName: servicelist[index]['name'],
            servicePhoto: servicelist[index]['photo'],
            servicePage: servicelist[index]['comp'],
            index: index,
          );
        });
  }
}

class LibraryServices extends StatelessWidget {
  final serviceName;
  final servicePhoto;
  final servicePage;
  final index;

  LibraryServices({
    this.serviceName,
    this.servicePhoto,
    this.servicePage,
    this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      clipBehavior: Clip.antiAlias,
      elevation: 4.0,
      color: Colors.white,
      child: Hero(
          tag: index,
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(15.0),
            shadowColor: Color(0x802196F3),
            child: InkWell(
              onTap: () {
                //print service name
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (context) => servicePage,
                  ),
                );
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        serviceName,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    servicePhoto,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
