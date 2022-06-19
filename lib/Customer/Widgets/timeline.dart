import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:timelines/timelines.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FixedTimeline(
      children: [
        Row(
          children: [
            DotIndicator(
              color: Colors.blue.shade100,
              child: Icon(
                TablerIcons.caret_down,
                size: 22,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(width: 8),
            const Text("Start Location")
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 11.5,
            ),
            SizedBox(
              height: 30.0,
              child: DashedLineConnector(
                space: 0,
                endIndent: 0,
                gap: 0.5,
                color: Colors.blue.shade100,
              ),
            ),
          ],
        ),
        Row(
          children: [
            DotIndicator(
              color: Colors.blue.shade100,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text("Start Location")
          ],
        ),
      ],
    );
  }
}
