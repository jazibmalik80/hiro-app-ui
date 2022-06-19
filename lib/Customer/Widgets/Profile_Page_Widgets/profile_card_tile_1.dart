// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class ProfileCardTile01 extends StatelessWidget {
  const ProfileCardTile01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 2.0,
      child: Container(
        padding: EdgeInsets.all(12),
        color: Theme.of(context).primaryColorLight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Ursula Gurnmeister'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('(3.2)'),
                            SmoothStarRating(
                              size: 18,
                              rating: 1,
                              allowHalfRating: false,
                              starCount: 1,
                              color: Theme.of(context).primaryColor,
                              borderColor: Theme.of(context).primaryColor,
                              spacing: 0.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  radius: 20.0,
                  lineWidth: 4.0,
                  animation: true,
                  percent: 60 / 100,
                  center: Text(
                    60.toString() + "%",
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  backgroundColor: Colors.grey,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.redAccent,
                ),
                SizedBox(height: 4),
                Text('Profile Data'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
