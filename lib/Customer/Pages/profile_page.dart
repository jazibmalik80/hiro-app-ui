// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Profile_Page_Widgets/profile_card_tile_1.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Profile_Page_Widgets/profile_card_tile_2.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Profile_Page_Widgets/profile_setting_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          color: Colors.white,
          child: Column(
            children: [
              ProfileCardTile01(),
              ProfileCardTile02(),
              SizedBox(height: 16),
              Row(
                children: [
                  Text('Your Account'),
                ],
              ),
              SizedBox(height: 6),
              ProfileSettingTile(
                leadingIcon: Icon(TablerIcons.history),
                settingName: 'Ride History',
              ),
              ProfileSettingTile(
                leadingIcon: Icon(TablerIcons.file_dislike),
                settingName: 'Blocked Driver',
              ),
              ProfileSettingTile(
                leadingIcon: Icon(TablerIcons.heart),
                settingName: 'Favourite Driver',
              ),
              ProfileSettingTile(
                leadingIcon: Icon(TablerIcons.map_pin),
                settingName: 'Favourite Location',
              ),
              ProfileSettingTile(
                leadingIcon: Icon(TablerIcons.info_circle),
                settingName: 'About',
              ),
              ProfileSettingTile(
                leadingIcon: Icon(TablerIcons.help),
                settingName: 'Support',
              ),
              ProfileSettingTile(
                leadingIcon: Icon(TablerIcons.settings),
                settingName: 'Setting',
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Row(
          children: [
            // SizedBox(width: 12),
            Icon(Icons.logout),
            SizedBox(width: 4),
            Text('Signout'),
          ],
        ),
      ],
    );
  }
}
