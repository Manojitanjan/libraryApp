import 'package:flutter/material.dart';
import 'package:library_kelaniya/university_services_subpages/e_repositary.dart';
import 'package:library_kelaniya/university_services_subpages/membership.dart';
import 'package:library_kelaniya/university_services_subpages/vpn_access.dart';
import 'package:library_kelaniya/university_services_subpages/library_handbook.dart';
import 'package:library_kelaniya/university_services_subpages/imf_e_library.dart';

class UniversityServicesMenuList extends StatefulWidget {
  @override
  _UniversityServicesMenuListState createState() =>
      _UniversityServicesMenuListState();
}

var universityServiceList = [
  {"name": "E-Repositary", "comp": new ERepositary()},
  {"name": "VPN-Access", "comp": new VpnAccess()},
  {"name": "Library Handbook", "comp": new LibraryHandbook()},
  {"name": "IMF E-Library", "comp": new ImfELibrary()},
  {"name": "Membership", "comp": new Membership()}
];

class _UniversityServicesMenuListState
    extends State<UniversityServicesMenuList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: universityServiceList.length,
      itemBuilder: (BuildContext context, int index) {
        return UniversityServicesMenu(
          serviceName: universityServiceList[index]['name'],
          servicePage: universityServiceList[index]['comp'],
          index: index,
        );
      },
    );
  }
}

class UniversityServicesMenu extends StatelessWidget {
  final serviceName;
  final servicePage;
  final index;

  UniversityServicesMenu({this.serviceName, this.servicePage, this.index});
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
