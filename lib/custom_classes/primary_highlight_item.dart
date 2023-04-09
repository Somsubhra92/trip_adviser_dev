import 'package:flutter/material.dart';
import 'package:trip_adviser/package_search_page.dart';

import '../service_firebase.dart';

class PrimaryHighlightItems extends StatefulWidget {
  const PrimaryHighlightItems(
      {Key? key, required this.assetUrl, required this.title})
      : super(key: key);

  final String assetUrl;
  final String title;

  @override
  State<PrimaryHighlightItems> createState() =>
      _PrimaryHighlightItemsState(assetUrl: this.assetUrl, title: this.title);
}

class _PrimaryHighlightItemsState extends State<PrimaryHighlightItems> {
  String assetUrl;
  String title;

  _PrimaryHighlightItemsState({required this.assetUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("createDashboardTree");
        ServiceClass.createDashboardTree();
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PackageSearchPage()));
      },
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            child: CircleAvatar(
              backgroundImage: Image.asset(this.assetUrl, gaplessPlayback: true,).image,
              radius: 32,
            ),
            radius: 35,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            this.title,
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
