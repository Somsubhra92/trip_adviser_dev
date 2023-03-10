import 'package:flutter/material.dart';

import 'primary_highlight_item.dart';

class PrimaryHighlightSection extends StatefulWidget {
  const PrimaryHighlightSection({Key? key}) : super(key: key);

  @override
  State<PrimaryHighlightSection> createState() => _PrimaryHighlightSectionState();
}

class _PrimaryHighlightSectionState extends State<PrimaryHighlightSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border(
              top: BorderSide(color: Colors.black, width: 10))),
      child: Row(
        children: [
          Expanded(
            child: PrimaryHighlightItems(
              assetUrl: "images/holiday_package.jpg",
              title: "Holiday Packages",
            ),
          ),
          Expanded(
            child: PrimaryHighlightItems(
              assetUrl: "images/hotels.png",
              title: "Hotels",
            ),
          ),
          Expanded(
            child: PrimaryHighlightItems(
              assetUrl: "images/retro_taxi.jpg",
              title: "Cabs",
            ),
          )
        ],
      ),
    );
  }
}
