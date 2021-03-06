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
  // DateTime selectedDate = DateTime.now();
  // final DateFormat dateFormat = DateFormat('dd-MM-yyyy- HH:mm');
  // final String _selectedDate = "Start - end Date  And Time";
  DateTime? dateTime;
  DateTimeRange? dateRange;
  TimeOfDay? time;
  String getText() {
    if (dateTime == null) {
      return 'Start - end and Time';
    } else {
      return DateFormat('dd/MM/yyyy HH:mm').format(dateTime!);
    }
  }

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
              getText(),
            ),
            IconButton(
              onPressed: () {
                pickDateTime(context);
                // final selectedDate = await _selectDateTime(context);
                // if (selectedDate == null) return;

                // (selectedDate);

                // final selectedTime = await _selectTime(context);
                // if (selectedTime == null) return;
                // (selectedTime);

                // setState(() {
                //   dateTime = DateTime(
                //     selectedDate.year,
                //     selectedDate.month,
                //     selectedDate.day,
                //     selectedDate.hour,
                //     selectedDate.minute,
                //   );
                // });
              },
              icon: const Icon(Icons.calendar_today),
            ),
          ],
        ),
      ),
    );
  }

  Future pickDateTime(BuildContext context) async {
    final date = await pickDate(context);
    if (date == null) return;

    final time = await pickTime(context);
    if (time == null) return;
    // } else {
    //   final hours = time!.hour.toString();
    //   final minutes = time!.minute.toString();

    //   return '$hours: $minutes';
    // }

    setState(() {
      dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  Future pickDate(BuildContext context) async {
    final initialDateRange = DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(const Duration(hours: 24 * 3)));
    final newDateRange = await showDateRangePicker(
      context: context,
      //print(1 ?? 3); // <-- Prints 1.
      //print(null ?? 12); // <-- Prints 12.
      initialDateRange: dateRange ?? initialDateRange,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    // (newDateRange);

    if (newDateRange == null) return;

    return newDateRange;
    // setState(() {
    //   dateRange = newDateRange;
    // });
  }

  Future pickTime(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: time ?? initialTime,
      // initialTime: dateTime != null
      //     ? TimeOfDay(hour: dateTime!.hour, minute: dateTime!.minute)
      //     : initialTime,
    );
    // (newTime);

    if (newTime == null) return;

    return newTime;
    // setState(() {
    //   time = newTime;
    // });
  }

//   Future _selectTime(BuildContext context) {
//     final now = DateTime.now();

//     return showTimePicker(
//         context: context,
//         initialTime: TimeOfDay(hour: now.hour, minute: now.minute));
//   }

//   Future _selectDateTime(BuildContext context) => showDatePicker(
//       context: context,
//       initialDate: DateTime.now().add(const Duration(seconds: 1)),
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2100));
// }
}
