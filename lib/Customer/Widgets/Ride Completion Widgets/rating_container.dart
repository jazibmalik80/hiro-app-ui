// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
      color: Theme.of(context).primaryColorLight,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                'How was your trip?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C2828),
                  fontSize: 14,
                ),
              ),
              Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Text(
              'Your feedback will help us improve Driving Experience better',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFFA39E9E),
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothStarRating(
                size: 28,
                rating: 5,
                allowHalfRating: false,
                starCount: 5,
                color: Theme.of(context).primaryColor,
                borderColor: Theme.of(context).primaryColor,
                spacing: 0.0,
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: Theme.of(context).primaryColor,
                      style: BorderStyle.solid,
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              OutlinedButton(
                child: Text(
                  'OPEN SUPPORT',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12,
                  ),
                ),
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: Theme.of(context).primaryColor,
                      style: BorderStyle.solid,
                    ),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
