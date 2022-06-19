// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class ReviewCustomCard extends StatelessWidget {
  const ReviewCustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '11 Sep 2022',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'Est asperiores ea est.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFa39e9e),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "(3.2)",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFa39e9e),
                      ),
                    ),
                    SmoothStarRating(
                      rating: 1,
                      allowHalfRating: false,
                      starCount: 1,
                      color: Theme.of(context).primaryColor,
                      borderColor: Theme.of(context).primaryColor,
                      spacing: 0.0,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
