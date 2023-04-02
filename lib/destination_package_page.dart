import 'package:flutter/material.dart';
import 'package:trip_adviser/custom_classes/destination_package_item.dart';

class DestinationDetailsPage extends StatefulWidget {
  const DestinationDetailsPage({Key? key}) : super(key: key);

  @override
  State<DestinationDetailsPage> createState() => _DestinationDetailsPageState();
}

class _DestinationDetailsPageState extends State<DestinationDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Packages"),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextButton(
              onPressed: (){},
              child: Card(
                child: DestinationPackageItem(),
                color: Colors.blue[20],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
