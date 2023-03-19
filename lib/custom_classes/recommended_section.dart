import 'package:flutter/material.dart';
import 'package:trip_adviser/custom_classes/recommended_section_item.dart';

class RecommendedSection extends StatefulWidget {
  const RecommendedSection({Key? key}) : super(key: key);

  @override
  State<RecommendedSection> createState() => _RecommendedSectionState();
}

class _RecommendedSectionState extends State<RecommendedSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Text(
            "Recommanded Packages",
            style: TextStyle(fontFamily: "Oswald", fontSize: 20, fontWeight: FontWeight.w600,color: Colors.blueAccent),
            textAlign: TextAlign.left,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecommandedSectionItem(assetName: "images/kolkata.jpeg",highlightName: "Kolkata",),
              RecommandedSectionItem(assetName: "images/puri.jpeg",highlightName: "Puri",),
              RecommandedSectionItem(assetName: "images/darjeeling.jpg", highlightName: "Darjeeling",),
              RecommandedSectionItem(assetName: "images/shimla.jpeg", highlightName: "Shimla",)
            ],
          ),
        ),
      ],
    );
  }
}
