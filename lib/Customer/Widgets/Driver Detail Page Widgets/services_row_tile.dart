// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ServicesRowTile extends StatelessWidget {
  final String serviceName;
  final String fare;
  final Icon serviceIcon;
  const ServicesRowTile({
    Key? key,
    required this.serviceName,
    required this.fare,
    required this.serviceIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(serviceName),
                serviceIcon,
              ],
            ),
            Text(
              fare,
              style: TextStyle(
                color: Color(0xFF828282),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
