// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class ServicesCustomTile extends StatefulWidget {
  final String serviceName;
  const ServicesCustomTile({
    Key? key,
    required this.serviceName,
  }) : super(key: key);

  @override
  State<ServicesCustomTile> createState() => _ServicesCustomTileState();
}

class _ServicesCustomTileState extends State<ServicesCustomTile> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        value = value;
                      });
                    },
                  ),
                  Text(widget.serviceName),
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                    iconSize: 16,
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Icon(TablerIcons.minus),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(4, 3, 4, 3),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Center(
                      child: Text('2'),
                    ),
                  ),
                  IconButton(
                    iconSize: 16,
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Icon(TablerIcons.plus),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
