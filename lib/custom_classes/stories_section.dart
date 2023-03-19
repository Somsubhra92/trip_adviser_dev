import 'package:flutter/material.dart';
import 'package:trip_adviser/custom_classes/stories_section_items.dart';

class StoriesSection extends StatefulWidget {
  const StoriesSection({Key? key}) : super(key: key);

  @override
  State<StoriesSection> createState() => _StoriesSectionState();
}

class _StoriesSectionState extends State<StoriesSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: [StoriesItem(), StoriesItem(),StoriesItem(), StoriesItem()],
        padding: EdgeInsets.only(top: 0),
      ),
    );

    // return SingleChildScrollView(
    //   scrollDirection: Axis.vertical,
    //   child: Padding(
    //     padding: const EdgeInsets.only(bottom: 80.0),
    //     child: Column(
    //       // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
    //       children: [
    //         StoriesItem(),
    //         StoriesItem()
    //       ],
    //     ),
    //   ),
    // );
  }
}
