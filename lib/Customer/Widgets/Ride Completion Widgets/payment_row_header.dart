import 'package:flutter/material.dart';

class PaymentRowHeader extends StatelessWidget {
  const PaymentRowHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const SizedBox(
          width: 150,
          child: Text(
            "Name",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF2C2828),
            ),
          ),
        ),
        const SizedBox(
          child: Text(
            "Quantity",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF2C2828),
            ),
          ),
        ),
        const SizedBox(
          child: Text(
            "Fare",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF2C2828),
            ),
          ),
        ),
      ],
    );
  }
}
