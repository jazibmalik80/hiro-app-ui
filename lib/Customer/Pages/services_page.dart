// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/services_tile_widget.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Select Services',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(12, 8, 12, 12),
        color: Colors.white,
        child: Column(
          children: [
            ServicesCustomTile(serviceName: 'Wheel Chair'),
            SizedBox(height: 8),
            ServicesCustomTile(serviceName: 'Oxygen cylinder'),
            SizedBox(height: 8),
            ServicesCustomTile(serviceName: 'Sterilizers'),
            SizedBox(height: 8),
            ServicesCustomTile(serviceName: 'Fluid Warmers'),
            SizedBox(height: 8),
            ServicesCustomTile(serviceName: 'Defibrillators'),
            SizedBox(height: 8),
            ServicesCustomTile(serviceName: 'Stretchers'),
          ],
        ),
      ),
    );
  }
}
