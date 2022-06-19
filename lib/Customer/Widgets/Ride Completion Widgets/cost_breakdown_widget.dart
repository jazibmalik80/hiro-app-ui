// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CostBreakDown extends StatelessWidget {
  const CostBreakDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cost BreakDown',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C2828),
                ),
              ),
              Chip(
                labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Theme.of(context).primaryColorLight,
                label: Text(
                  'Receipt',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ride Fare'),
              Text(
                '¥120',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA39E9E),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Services Fare'),
              Text(
                '¥120',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA39E9E),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Fare',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C2828),
                ),
              ),
              Chip(
                labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Theme.of(context).primaryColorLight,
                label: Text(
                  '¥120',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2C2828).withOpacity(1.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
