// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/review_tile_card.dart';

class RiviewsPage extends StatefulWidget {
  const RiviewsPage({Key? key}) : super(key: key);

  @override
  _RiviewsPageState createState() => _RiviewsPageState();
}

class _RiviewsPageState extends State<RiviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Review',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 4, 10, 12),
          color: Colors.white,
          child: Column(
            children: [
              ReviewCustomCard(),
              SizedBox(height: 8),
              ReviewCustomCard(),
              SizedBox(height: 8),
              ReviewCustomCard(),
              SizedBox(height: 8),
              ReviewCustomCard(),
              SizedBox(height: 8),
              ReviewCustomCard(),
              SizedBox(height: 8),
              ReviewCustomCard(),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
