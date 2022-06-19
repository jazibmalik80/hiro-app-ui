// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileSettingTile extends StatelessWidget {
  final Icon leadingIcon;
  final String settingName;
  const ProfileSettingTile(
      {Key? key, required this.leadingIcon, required this.settingName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          leadingIcon,
          SizedBox(width: 6),
          Text(settingName),
        ],
      ),
    );
  }
}
