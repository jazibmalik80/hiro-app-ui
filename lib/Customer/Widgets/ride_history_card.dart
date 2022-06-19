// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/timeline.dart';
import 'package:timelines/timelines.dart';

class RideHistoryCard extends StatefulWidget {
  const RideHistoryCard({Key? key}) : super(key: key);

  @override
  _RideHistoryCardState createState() => _RideHistoryCardState();
}

class _RideHistoryCardState extends State<RideHistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              children: [
                Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2C2828),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              direction: Axis.horizontal,
              children: [
                Chip(
                  labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  label: Text(
                    'Wheel Chair',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Chip(
                  labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  label: Text(
                    'Cylinder',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Chip(
                  labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  label: Text(
                    'Stretchers',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Chip(
                  labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  label: Text(
                    'Fluid Warmers',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Chip(
                  labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  label: Text(
                    'Defibrillators',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
