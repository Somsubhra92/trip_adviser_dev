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
                DetailsCard(
                  dayNumber: "Day 1",
                  highlight: "Transfers \u2022 Hotel",
                  child: TransitCard(),
                ),
                DetailsCard(
                  dayNumber: "Day 2",
                  highlight: "Transfers \u2022 Hotel",
                  child: HotelCard(),
                ),
                DetailsCard(
                  dayNumber: "Day 3",
                  highlight: "Hotel \u2022 Transfer \u2022 Sightseeing",
                  child: SightseeingCard(),
                ),
                DetailsCard(
                  dayNumber: "Day 4",
                  highlight: "Transfers \u2022 Hotel",
                  child: TransitCard(),
                ),
                DetailsCard(
                  dayNumber: "Day 5",
                  highlight: "Transfers \u2022 Hotel",
                  child: SightseeingCard(),
                ),
                DetailsCard(
                  dayNumber: "Day 6",
                  highlight: "Transfers \u2022 Hotel",
                  child: HotelCard(),
                ),
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
                    MonthCard(month: "MAR"),
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
                    DateCard(
                      day: "Sat",
                      date: "29",
                    ),
                    DateCard(
                      day: "Sun",
                      date: "30",
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

class MonthCard extends StatefulWidget {

  final String month;

  const MonthCard({Key? key, required this.month}) : super(key: key);

  @override
  State<MonthCard> createState() => _MonthCardState(month: this.month);
}

class _MonthCardState extends State<MonthCard> {

  final String month;

  _MonthCardState({required this.month});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
        width: 58,
        margin: EdgeInsets.only(top: 4),
        padding: EdgeInsets.all(4),
        color: Colors.black,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(this.month, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),textAlign: TextAlign.justify,),
            ),
          ],
        ),
      )
      ,
    );
  }
}


class DetailsCard extends StatefulWidget {
  final String dayNumber;
  final String highlight;
  final Widget child;

  const DetailsCard(
      {Key? key,
      required this.dayNumber,
      required this.highlight,
      required this.child})
      : super(key: key);

  @override
  State<DetailsCard> createState() => _DetailsCardState(
      dayNumber: this.dayNumber, highlight: this.highlight, child: this.child);
}

class _DetailsCardState extends State<DetailsCard> {
  final String dayNumber;
  final String highlight;
  final Widget child;

  _DetailsCardState(
      {required this.dayNumber, required this.highlight, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  this.dayNumber,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                margin: EdgeInsets.only(top: 8, bottom: 8, left: 0),
                color: Colors.yellow[100],
              ),
              Container(
                width: 300,
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Included : ",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: this.highlight,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              )
            ],
          ),
          child,
        ],
      ),
    );
  }
}

class TransitCard extends StatefulWidget {
  const TransitCard({Key? key}) : super(key: key);

  @override
  State<TransitCard> createState() => _TransitCardState();
}

class _TransitCardState extends State<TransitCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
            padding: EdgeInsets.only(left: 8, top: 4, bottom: 8),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Transfer from ",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  TextSpan(
                    text: "Kalka to Shimla",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )),
        Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Private Transfer | ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: "Swift",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/retro_taxi.jpg",
              height: 100,
              width: 100,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 8, bottom: 8),
              child: Text("3 seater | AC | 2 Luggage bags"),
            ),
          ],
        ),
      ],
    );
  }
}

class HotelCard extends StatefulWidget {
  const HotelCard({Key? key}) : super(key: key);

  @override
  State<HotelCard> createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8, top: 4, bottom: 8),
          child: Text("Check-in to hotel"),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/hotels.png",
              height: 100,
              width: 100,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 8, bottom: 8),
              child: Text("Shobia Hotel"),
            ),
          ],
        ),
      ],
    );
    ;
  }
}

class SightseeingCard extends StatefulWidget {
  const SightseeingCard({Key? key}) : super(key: key);

  @override
  State<SightseeingCard> createState() => _SightseeingCardState();
}

class _SightseeingCardState extends State<SightseeingCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8, top: 4, bottom: 8),
          child: Text("Sightseeing in Kullu 1 Hour"),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/hotels.png",
              height: 100,
              width: 100,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("\u2022 Kullu shawl factory     "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("\u2022 Vaishno Mata Temple"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
    ;
  }
}
