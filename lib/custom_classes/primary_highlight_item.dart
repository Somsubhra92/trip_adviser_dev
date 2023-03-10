import 'package:flutter/material.dart';

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
    return Column(
      children: [
        CircleAvatar(
          child: CircleAvatar(
            backgroundImage: AssetImage(this.assetUrl),
            radius: 32,
          ),
          radius: 35,
          backgroundColor: Colors.blue,
        ),
        SizedBox(
          height: 10,
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
    );
  }
}
