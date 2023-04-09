import 'package:flutter/material.dart';

class PackageDetailsPage extends StatefulWidget {
  const PackageDetailsPage({Key? key}) : super(key: key);

  @override
  State<PackageDetailsPage> createState() => _PackageDetailsPageState();
}

class _PackageDetailsPageState extends State<PackageDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: TopSection(),
          ),
          Container(
            child: BottomSection(),
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DetailsCard(),
                DetailsCard(),
                DetailsCard(),
                DetailsCard(),
                DetailsCard(),
                DetailsCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TopSection extends StatefulWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
          image: AssetImage("images/shimla.jpeg"),
          height: 250,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Splendid Shimla, Kullu & Manali from Kolkata",
            style: TextStyle(
                fontFamily: "Lora",
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                    children: [
                      TextSpan(
                        text: "3N Shimla ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "\u2022",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: " 1N Kullu ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "\u2022",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: " 2N Manali",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                flex: 14,
              ),
              Expanded(
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      "6N/7D",
                    ),
                  ),
                ),
                flex: 3,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontFamily: "Lora",
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                      children: [
                        TextSpan(
                          text: "Kolkata ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "\u2022",
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: " 2 Travellers ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "\u2022",
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: " 25 May - 1 June",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  flex: 7,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Modify",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  flex: 2,
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlue[100]),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class BottomSection extends StatefulWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: SizedBox(
            height: 5,
          ),
          color: Colors.grey[350],
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Itenary",
            style: TextStyle(
                fontFamily: "Lora", fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          color: Colors.blue[100],
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Text(
                        "Day Plan",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Text(
                        "3 Hotels",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Text(
                        "7 Transfers",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Text(
                        "Activities",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DateCard(
                      day: "Tue",
                      date: "25",
                    ),
                    DateCard(
                      day: "Wed",
                      date: "26",
                    ),
                    DateCard(
                      day: "Thur",
                      date: "27",
                    ),
                    DateCard(
                      day: "Fri",
                      date: "28",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              )
            ],
          ),
        )
      ],
    );
  }
}

class DateCard extends StatefulWidget {
  final String day;
  final String date;

  const DateCard({Key? key, required this.day, required this.date})
      : super(key: key);

  @override
  State<DateCard> createState() =>
      _DateCardState(day: this.day, date: this.date);
}

class _DateCardState extends State<DateCard> {
  final String day;
  final String date;

  _DateCardState({required this.day, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(this.day),
          SizedBox(
            height: 2,
          ),
          Text(this.date),
        ],
      ),
      height: 58,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(5),
    );
  }
}

class DetailsCard extends StatefulWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(height: 20,width: 40,child: Text("Day 1"),),
              Container(height: 20,width: 100,decoration: BoxDecoration(
                color: Colors.grey[200]
              ),)
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
              ),
            ),
            height: 70,
            width: 1000,
          ),
        ],
      ),
    );
  }
}
