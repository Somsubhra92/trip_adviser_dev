import 'package:flutter/material.dart';

class DestinationPackageItem extends StatefulWidget {
  const DestinationPackageItem({Key? key}) : super(key: key);

  @override
  State<DestinationPackageItem> createState() => _DestinationPackageItemState();
}

class _DestinationPackageItemState extends State<DestinationPackageItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              "Premium 4N Kerala Vacay",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Lora",
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          ),
          Row(
            children: [
              Icon(Icons.location_pin),
              Text(
                "Starting from",
                style: TextStyle(fontFamily: "Lora"),
              ),
            ],
          ),
          DestinationImageItem(),
          Container(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontFamily: "Lora", fontSize: 20, fontWeight: FontWeight.w600),
                children: [
                  TextSpan(text: "3N ", style: TextStyle(color: Colors.red),),
                  TextSpan(text: "Manali | ", style: TextStyle(color: Colors.black),),
                  TextSpan(text: "2N ", style: TextStyle(color: Colors.red),),
                  TextSpan(text: "Shimla", style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
            // child: RichText(text: TextSpan(style: TextStyle(color: Colors.blue), children: [TextSpan(text: 'This is', style: TextStyle(fontWeight: FontWeight.bold)),TextSpan(text: ' FlutterCampus', style: TextStyle(fontSize: 25)),TextSpan(text: ' Learn Flutter.', style: TextStyle(fontStyle: FontStyle.italic,),),],),),
            // child: Text("Shimla | Manali", style: TextStyle(fontFamily: "Lora", fontSize: 20, fontWeight: FontWeight.w600),),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        "\u2022 Kufri",
                        style: TextStyle(fontSize: 15, fontFamily: "Lora"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        "\u2022 Mall Road",
                        style: TextStyle(fontSize: 15, fontFamily: "Lora"),
                      ),
                    )
                  ],
                ),
                flex: 2,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "12000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "per person",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DestinationImageItem extends StatelessWidget {
  const DestinationImageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment(0, 0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                child: Image.asset(
                  "images/kolkata.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 200,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 30,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                "5 Days | 4 Nights",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            // margin: EdgeInsets.only(top: 190, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
