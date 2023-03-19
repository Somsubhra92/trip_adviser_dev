import 'package:flutter/material.dart';

class StoriesItem extends StatefulWidget {
  const StoriesItem({Key? key}) : super(key: key);

  @override
  State<StoriesItem> createState() => _StoriesItemState();
}

class _StoriesItemState extends State<StoriesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      "images/kolkata.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              flex: 5,
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.only(top: 1),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text("Value for money"),
                      ),
                      Text("Posted by : praveen s"),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
