import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarTime extends StatefulWidget {
  const CalendarTime({
    Key? key,
  }) : super(key: key);

  @override
  State<CalendarTime> createState() => _CalendarState();
}

class _CalendarState extends State<CalendarTime> {
  DateTime selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd- HH:mm');
  String _selectedDate = "Start - end Date  And Time";

  // Future _openDatePicker(BuildContext context) async {
  //   final initialDateRange = DateTimeRange(
  //     start: DateTime.now(),
  //     end: DateTime.now().add(
  //       const Duration(hours: 24 * 3),
  //     ),
  //   );

  //   final newDateRange = await showDateRangePicker(
  //     context: context,
  //     firstDate: DateTime(DateTime.now().year - 5),
  //     lastDate: DateTime(DateTime.now().year + 5),

  //   );

  //   if (newDateRange != null) {
  //     setState(() {
  //       _selectedDate =
  //           DateFormat.yMMMd().format(initialDateRange.start).toString();

  //       DateFormat.yMMMEd().format(initialDateRange.end).toString();
  //     });
  //   }
  // }

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
              onPressed: () async {
                final selectedDate = await _selectDateTime(context);
                if (selectedDate == null) return;

                (selectedDate);

                final selectedTime = await _selectTime(context);
                if (selectedTime == null) return;
                (selectedTime);

                setState(() {
                  this.selectedDate = DateTime(
                    selectedDate.year,
                    selectedDate.month,
                    selectedDate.day,
                    selectedDate.hour,
                    selectedDate.minute,
                  );
                });
              },
              icon: const Icon(Icons.calendar_today),
            ),
          ],
        ),
      ),
    );
  }

  Future _selectTime(BuildContext context) {
    final now = DateTime.now();

    return showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: now.hour, minute: now.minute));
  }

  Future _selectDateTime(BuildContext context) => showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(seconds: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100));
}
