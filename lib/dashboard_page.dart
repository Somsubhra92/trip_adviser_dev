import 'package:flutter/material.dart';
import 'package:trip_adviser/custom_classes/recommended_section.dart';
import 'custom_classes/primary_highlight_section.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/app_logo.png"),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              PrimaryHighlightSection(),
              RecommendedSection()
            ],
          ),
        ),
      ),
    );
  }
}
