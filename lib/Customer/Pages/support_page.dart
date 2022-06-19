// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiro_ambulance_ui/Customer/Widgets/Support_Page_Widgets/support_ticket_card.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Support',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 4, 12, 12),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Add new Ticket',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              TextField(
                autofocus: false,
                controller: userNameController,
                decoration: InputDecoration(
                  labelText: 'User name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                cursorColor: Theme.of(context).primaryColor,
                maxLines: 08,
                autofocus: false,
                controller: messageController,
                decoration: InputDecoration(
                  labelText: 'Write Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
                  focusColor: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 24),
              CupertinoButton(
                child: Text('Submit'),
                color: Theme.of(context).primaryColor,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'All Tickets',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(width: 8),
                  Chip(
                    labelPadding: EdgeInsets.fromLTRB(4, -2, 4, -2),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text(
                      '10',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              SupportTicketCard(),
              SupportTicketCard(),
            ],
          ),
        ),
      ),
    );
  }
}
