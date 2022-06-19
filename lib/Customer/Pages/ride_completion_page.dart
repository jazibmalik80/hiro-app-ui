// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Ride%20Completion%20Widgets/cost_breakdown_widget.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Ride%20Completion%20Widgets/payment_widget.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Ride%20Completion%20Widgets/rating_container.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Ride%20Completion%20Widgets/top_info_container.dart';

class RideCompletionPage extends StatefulWidget {
  const RideCompletionPage({Key? key}) : super(key: key);

  @override
  _RideCompletionPageState createState() => _RideCompletionPageState();
}

class _RideCompletionPageState extends State<RideCompletionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Ride Completion',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              TopInfoContainer(),
              Divider(),
              PaymentContainer(),
              Divider(),
              CostBreakDown(),
              RatingContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
