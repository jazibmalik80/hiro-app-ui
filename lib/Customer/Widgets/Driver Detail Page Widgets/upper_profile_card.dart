// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class UpperProfileCard extends StatelessWidget {
  const UpperProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ybarra - Saldaña',
                          style: TextStyle(
                            color: Color(0xFF2C2828),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              TablerIcons.clock,
                              size: 12,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '10 min',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text(
                          'Fare: ¥100',
                          style: TextStyle(
                            color: Color(0xFF2C2828),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Chip(
                      labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: Theme.of(context).primaryColorLight,
                      label: Text(
                        '¥10/Hrs',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '(3.2)',
                      style: TextStyle(
                        color: Color(0xFFA39E9E),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
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
      ),
    );
  }
}
