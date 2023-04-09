import 'package:flutter/material.dart';
import 'package:trip_adviser/custom_classes/destination_package_item.dart';
import 'package:trip_adviser/package_details_page.dart';
import 'package:trip_adviser/sign_up_page.dart';

class DestinationDetailsPage extends StatefulWidget {
  const DestinationDetailsPage({Key? key}) : super(key: key);

  @override
  State<DestinationDetailsPage> createState() => _DestinationDetailsPageState();
}

class _DestinationDetailsPageState extends State<DestinationDetailsPage> {
  openPackagesDetails() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PackageDetailsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Packages"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              openPackagesDetails();
            },
            child: Card(
              child: DestinationPackageItem(),
              color: Colors.blue[20],
            ),
          ),
          GestureDetector(
            onTap: () {
              openPackagesDetails();
            },
            child: Card(
              child: DestinationPackageItem(),
              color: Colors.blue[20],
            ),
          ),
        ],
      ),
    );
  }
}
