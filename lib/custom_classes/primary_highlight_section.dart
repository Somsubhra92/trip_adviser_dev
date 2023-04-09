import 'package:flutter/material.dart';

import 'primary_highlight_item.dart';

class PrimaryHighlightSection extends StatefulWidget {
  const PrimaryHighlightSection({Key? key}) : super(key: key);

  @override
  State<PrimaryHighlightSection> createState() =>
      _PrimaryHighlightSectionState();
}

class _PrimaryHighlightSectionState extends State<PrimaryHighlightSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(child: Image.asset("images/background_img.jpeg", fit: BoxFit.cover, gaplessPlayback: true,)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images/app_logo.png",
                  height: 50,
                  width: 50,
                ),
                // SizedBox(width: 325,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              child: Card(
                child: SizedBox(
                  height: 85,
                  width: 1000,
                ),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: 25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
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
          ),
        ],
      ),
      // color: Colors.green,
    );
  }
}
