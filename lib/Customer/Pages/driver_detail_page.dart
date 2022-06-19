// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Driver%20Detail%20Page%20Widgets/services_row_tile.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Driver%20Detail%20Page%20Widgets/upper_profile_card.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Driver%20Detail%20Page%20Widgets/vehicle_info_container.dart';

class DriverDetailPage extends StatefulWidget {
  const DriverDetailPage({Key? key}) : super(key: key);

  @override
  _DriverDetailPageState createState() => _DriverDetailPageState();
}

class _DriverDetailPageState extends State<DriverDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              UpperProfileCard(),
              VehicleInfoContainer(),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Services',
                          style: TextStyle(
                            color: Color(0xFF2C2828),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Color(0xFF2C2828),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Fare',
                          style: TextStyle(
                            color: Color(0xFF2C2828),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    ServicesRowTile(
                      serviceName: 'Wheel Chair',
                      serviceIcon: Icon(
                        Icons.check,
                        size: 20,
                        color: Colors.green,
                      ),
                      fare: '¥122',
                    ),
                    ServicesRowTile(
                      serviceName: 'Oxygen',
                      serviceIcon: Icon(
                        Icons.check,
                        size: 20,
                        color: Colors.green,
                      ),
                      fare: '¥150',
                    ),
                    ServicesRowTile(
                      serviceName: 'Nurse',
                      serviceIcon: Icon(
                        Icons.close,
                        size: 20,
                        color: Colors.red,
                      ),
                      fare: '- - - -',
                    ),
                    ServicesRowTile(
                      serviceName: 'Fluid Warmers',
                      serviceIcon: Icon(
                        Icons.check,
                        size: 20,
                        color: Colors.green,
                      ),
                      fare: '¥150',
                    ),
                    ServicesRowTile(
                      serviceName: 'Stretchers',
                      serviceIcon: Icon(
                        Icons.check,
                        size: 20,
                        color: Colors.green,
                      ),
                      fare: '¥150',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {},
          child: const Text(
            'CONFIRM',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
