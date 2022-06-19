// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:timelines/timelines.dart';

import '../timeline.dart';

class TopInfoContainer extends StatelessWidget {
  const TopInfoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Chip(
                    labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: Theme.of(context).primaryColorLight,
                    label: Text(
                      'Completed',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Chip(
                    labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: Theme.of(context).primaryColorLight,
                    label: Text(
                      'Total Fare: ¥120',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2C2828),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Text(
                '20 May 2022, 10:08 AM',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2C2828),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          TimelineWidget(),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 18,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cummerata LLC'),
                        SizedBox(height: 4),
                        Text(
                          'Alf Auer',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA39E9E),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '(3.2) ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA39E9E),
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
          ),
        ],
      ),
    );
  }
}
