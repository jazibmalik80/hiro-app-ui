// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class ProfileCardTile02 extends StatelessWidget {
  const ProfileCardTile02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 2.0,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(12),
        child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(TablerIcons.award),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Reward'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Your Point'),
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
                  Chip(
                    labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('98'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
