// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Pages/driver_detail_page.dart';
import 'package:hiro_ambulance_ui/Customer/Pages/profile_page.dart';
import 'package:hiro_ambulance_ui/Customer/Pages/reviews_page.dart';
import 'package:hiro_ambulance_ui/Customer/Pages/ride_completion_page.dart';
import 'package:hiro_ambulance_ui/Customer/Pages/ride_history_page.dart';
import 'package:hiro_ambulance_ui/Customer/Pages/services_page.dart';
import 'package:hiro_ambulance_ui/Customer/Pages/support_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        backgroundColor: Color(0xFF021260),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(8, 16, 8, 8),
            child: Center(
              child: Column(
                children: [
                  CupertinoButton(
                    child: Text('Profile'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                  ),
                  SizedBox(height: 12),
                  CupertinoButton(
                    child: Text('Ride History'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RideHistoryPage()));
                    },
                  ),
                  SizedBox(height: 12),
                  CupertinoButton(
                    child: Text('Reviews'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RiviewsPage()));
                    },
                  ),
                  SizedBox(height: 12),
                  CupertinoButton(
                    child: Text('Services List'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ServicesPage()));
                    },
                  ),
                  SizedBox(height: 12),
                  CupertinoButton(
                    child: Text('Driver Detail'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DriverDetailPage()));
                    },
                  ),
                  SizedBox(height: 12),
                  CupertinoButton(
                    child: Text('Ride Completion'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const RideCompletionPage()));
                    },
                  ),
                  SizedBox(height: 12),
                  CupertinoButton(
                    child: Text('Support'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SupportPage()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
