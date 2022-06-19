// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/ride_history_card.dart';

class RideHistoryPage extends StatefulWidget {
  const RideHistoryPage({Key? key}) : super(key: key);

  @override
  _RideHistoryPageState createState() => _RideHistoryPageState();
}

class _RideHistoryPageState extends State<RideHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Ride History',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 8, 12, 12),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Total Ride',
                    style: TextStyle(
                      color: Color(0xFF2C2828),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 8),
                  Chip(
                    labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: Theme.of(context).primaryColorLight,
                    label: Text(
                      '10+',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              RideHistoryCard(),
              SizedBox(height: 12),
              RideHistoryCard(),
            ],
          ),
        ),
      ),
    );
  }
}
