import 'package:flutter/material.dart';
import 'package:trip_adviser/custom_classes/recommended_section.dart';
import 'package:trip_adviser/custom_classes/stories_section.dart';
import 'custom_classes/primary_highlight_section.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomSheet: Stack(
          children: [
            // Image.asset("images/nav_background.png", height: 80, fit: BoxFit.fill,),
            Container(
              child: TabBar(
                tabs: [
                  BottomNavButton(
                    icName: Icon(Icons.home),
                    title: "Home",
                  ),
                  BottomNavButton(
                    icName: Icon(Icons.airplane_ticket),
                    title: "My Trips",
                  ),
                  BottomNavButton(
                    icName: Icon(Icons.person),
                    title: "User",
                  )
                ],
              ),
              height: 80,
              color: Colors.black,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            HomePage(),
            Icon(Icons.trip_origin),
            Icon(Icons.ice_skating)
          ],
        ),
      ),
    );
    // return Container(
    //   child: Scaffold(
    //     body: Column(
    //       children: [
    //         Expanded(child: PrimaryHighlightSection(),flex: 15,),
    //         Expanded(child: RecommendedSection(),flex: 9,),
    //         Expanded(child: StoriesSection(),flex:20,)
    //       ],
    //     ),
    //   ),
    // );
  }



}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PrimaryHighlightSection(),
        RecommendedSection(),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Stories by Travellers",
              style: TextStyle(fontFamily: "Oswald", fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blueAccent),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Flexible(child: StoriesSection()),
      ],
    );
  }
}

class BottomNavButton extends StatefulWidget {
  const BottomNavButton({Key? key, required this.icName, required this.title})
      : super(key: key);

  final Icon icName;
  final String title;

  @override
  State<BottomNavButton> createState() =>
      _BottomNavButtonState(icName: this.icName, title: this.title);
}

class _BottomNavButtonState extends State<BottomNavButton> {
  _BottomNavButtonState({required this.icName, required this.title});

  Icon icName;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          this.icName,
          Text(this.title),
        ],
      ),
      margin: EdgeInsets.only(top: 10),
    );
  }
}
