import 'package:flutter/material.dart';
import 'package:foodwifi/src/dateTimeRange/widgets/button_widget.dart';
import 'package:intl/intl.dart';

class CalenderRangeTime extends StatefulWidget {
  const CalenderRangeTime({Key? key}) : super(key: key);

  @override
  State<CalenderRangeTime> createState() => _CalenderRangeTimeState();
}

class _CalenderRangeTimeState extends State<CalenderRangeTime> {
  DateTimeRange? dateRange;
  TimeOfDay? time;

  String getFrom() {
    if (dateRange == null) {
      return 'Start- End';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.start);
    }
  }

  String getUntil() {
    if (dateRange == null) {
      return 'End';
    } else {
      return DateFormat('dd/MM/yyyy').format(dateRange!.end);
    }
  }

  String getText() {
    if (time == null) {
      return 'Time';
    } else {
      final hours = time!.hour.toString().padLeft(2, '0');
      final minutes = time!.minute.toString().padLeft(2, '0');

      return '$hours:$minutes';
    }
  }

  @override
  Widget build(BuildContext context) => HeaderWidget(
        title: 'Date Range',
        child: Row(
          children: [
            Expanded(
              child: ButtonWidget(
                text: getFrom(),
                onClicked: () => pickDateRange(context),
              ),
            ),
            // const SizedBox(width: 8),
            // const Icon(Icons.arrow_forward, color: Colors.white),
            const SizedBox(width: 8),
            Expanded(
              child: ButtonWidget(
                text: getUntil(),
                onClicked: () => pickDateRange(context),
              ),
            ),
            Expanded(
              child: ButtonWidget(
                text: getText(),
                onClicked: () => pickTime(context),
              ),
            ),
          ],
        ),
      );
  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(hours: 24 * 3)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }

  Future pickTime(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: time ?? initialTime,
    );

    if (newTime == null) return;

    setState(() => time = newTime);
  }
}
