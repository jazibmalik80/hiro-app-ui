// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Ride%20Completion%20Widgets/payment_row_header.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Ride%20Completion%20Widgets/payment_row_widget.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({Key? key}) : super(key: key);

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
                'Payment Method',
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
                  'Cash',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          PaymentRowHeader(),
          SizedBox(height: 12),
          PaymentRow(
            name: 'Wheel Chair Chair',
            quantity: '2',
            fare: '¥100',
          ),
          SizedBox(height: 8),
          PaymentRow(
            name: 'Nurse',
            quantity: '1',
            fare: '¥200',
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Services Fare',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C2828),
                ),
              ),
              Text(
                '¥300',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
