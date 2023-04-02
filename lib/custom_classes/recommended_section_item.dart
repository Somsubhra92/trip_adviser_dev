import 'package:flutter/material.dart';

class RecommandedSectionItem extends StatefulWidget {
  const RecommandedSectionItem(
      {Key? key, required this.assetName, required this.highlightName})
      : super(key: key);

  final String assetName;
  final String highlightName;

  @override
  State<RecommandedSectionItem> createState() => _RecommandedSectionItemState(
      assetName: this.assetName, highlightName: this.highlightName);
}

class _RecommandedSectionItemState extends State<RecommandedSectionItem> {
  String assetName;
  String highlightName;

  _RecommandedSectionItemState(
      {required this.assetName, required this.highlightName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {Navigator.pushNamed(context, "/destionation_package_details",);},
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                size: Size.square(125),
                child: Image.asset(
                  assetName,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 5),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 4),
              child: Text(this.highlightName, style: TextStyle(fontSize: 15, color: Colors.black),),
            ),
            color: Color.fromRGBO( 239, 165, 65,1),
            margin: EdgeInsets.only(top: 15),
          ),
        ],
      ),
    );
  }
}
