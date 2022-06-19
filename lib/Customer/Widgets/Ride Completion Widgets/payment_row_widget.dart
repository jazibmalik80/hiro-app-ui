// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class PaymentRow extends StatelessWidget {
  final String name;
  final String quantity;
  final String fare;
  const PaymentRow(
      {Key? key,
      required this.name,
      required this.quantity,
      required this.fare})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150,
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2C2828),
                ),
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              )
            ],
          ),
        ),
        Container(
          width: 25,
          child: Chip(
            labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            label: Text(
              quantity,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000).withOpacity(0.6),
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            fare,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFA39E9E),
            ),
          ),
        ),
      ],
    );
  }
}
