import 'package:flutter/material.dart';

class CalendarTime extends StatefulWidget {
  const CalendarTime({Key? key}) : super(key: key);

  @override
  State<CalendarTime> createState() => _CalendarState();
}

class _CalendarState extends State<CalendarTime> {
  String _selectedDate = "Start - end  And Time";
  DateTimeRange? dateRange;

  Future dateTime(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(
        Duration(hours: 24 * 3),
      ),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
    );
    if (newDateRange == null) {
      setState(() {
        _selectedDate = newDateRange.toString();
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _selectedDate,
              ),
              IconButton(
                onPressed: () {
                  dateTime(context);
                },
                icon: const Icon(Icons.calendar_today),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
