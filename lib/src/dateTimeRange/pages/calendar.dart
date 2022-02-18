import 'package:flutter/material.dart';

class CalendarTime extends StatefulWidget {
  const CalendarTime({Key? key}) : super(key: key);

  @override
  State<CalendarTime> createState() => _CalendarState();
}

class _CalendarState extends State<CalendarTime> {
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2022, 11, 5),
    end: DateTime(2022, 12, 24),
  );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('${start.year},'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
