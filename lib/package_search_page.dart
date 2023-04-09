import 'package:flutter/material.dart';

class PackageSearchPage extends StatefulWidget {
  const PackageSearchPage({Key? key}) : super(key: key);

  @override
  State<PackageSearchPage> createState() => _PackageSearchPageState();
}

class _PackageSearchPageState extends State<PackageSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Holiday Packages"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white24,
        ),
        child: Column(
          children: [
            Card(
              child: SearchPanel(),
            ),
            Card(child: TrendinSection()),
            HolidayThemeSection()
          ],
        ),
      ),
    );
  }
}

class SearchPanel extends StatefulWidget {
  const SearchPanel({Key? key}) : super(key: key);

  @override
  State<SearchPanel> createState() => _SearchPanelState();
}

class _SearchPanelState extends State<SearchPanel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SearchFields(
              hintText: "Travelling to", prefixIcon: Icon(Icons.location_pin)),
          SearchFields(
              hintText: "Start Date", prefixIcon: Icon(Icons.calendar_month)),
          SearchFields(hintText: "Guests", prefixIcon: Icon(Icons.person)),
          ElevatedButton(
            onPressed: () {},
            child: Text("Search"),
          )
        ],
      ),
    );
  }
}

class SearchFields extends StatefulWidget {
  String hintText;
  Icon prefixIcon;

  SearchFields({Key? key, required this.hintText, required this.prefixIcon})
      : super(key: key);

  @override
  State<SearchFields> createState() =>
      _SearchFieldsState(hintText: this.hintText, prefixIcon: this.prefixIcon);
}

class _SearchFieldsState extends State<SearchFields> {
  String hintText;
  Icon prefixIcon;

  _SearchFieldsState({required this.hintText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: this.hintText,
          prefixIcon: this.prefixIcon,
        ),
      ),
    );
  }
}

class TrendinSection extends StatefulWidget {
  const TrendinSection({Key? key}) : super(key: key);

  @override
  State<TrendinSection> createState() => _TrendinSectionState();
}

class _TrendinSectionState extends State<TrendinSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Trending Destinations",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: TrendingSectionItem(
                  title: "Puri",
                  assetName: "images/puri.jpeg",
                ),
              ),
              Expanded(
                child: TrendingSectionItem(
                  title: "Shimla",
                  assetName: "images/shimla.jpeg",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TrendingSectionItem extends StatefulWidget {
  String title;
  String assetName;

  TrendingSectionItem({Key? key, required this.title, required this.assetName})
      : super(key: key);

  @override
  State<TrendingSectionItem> createState() =>
      _TrendingSectionItemState(title: this.title, assetName: this.assetName);
}

class _TrendingSectionItemState extends State<TrendingSectionItem> {
  String title;
  String assetName;

  _TrendingSectionItemState({required this.title, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(this.assetName),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            this.title,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}

class HolidayThemeSection extends StatefulWidget {
  const HolidayThemeSection({Key? key}) : super(key: key);

  @override
  State<HolidayThemeSection> createState() => _HolidayThemeSectionState();
}

class _HolidayThemeSectionState extends State<HolidayThemeSection> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Holidays by theme", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HolidayThemeItem(),
                    HolidayThemeItem()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HolidayThemeItem extends StatefulWidget {
  const HolidayThemeItem({Key? key}) : super(key: key);

  @override
  State<HolidayThemeItem> createState() => _HolidayThemeItemState();
}

class _HolidayThemeItemState extends State<HolidayThemeItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset("images/kolkata.jpeg", height: 150, width: 250,fit: BoxFit.cover,),
          ),
          SizedBox(height: 10,),
          Text("HONEYMOON", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),textAlign: TextAlign.left,),
          SizedBox(height: 10,),
          Row(
            children: [
              OutlinedButton(onPressed: (){}, child: Text("Beches")),
              SizedBox(width: 5),
              OutlinedButton(onPressed: (){}, child: Text("Hill Vacay"))
            ],
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){}, child: Text("Advanture")),
              SizedBox(width: 5,),
              OutlinedButton(onPressed: (){}, child: Text("City Escapes"))
            ],
          ),

        ],
      ),
    );
  }
}
