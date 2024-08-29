import 'package:flutter/material.dart';

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({super.key});

  @override
  State<DateTimePickerWidget> createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime? selectedDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade200,
        title: const Text("Date Time Picker"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(selectedDateTime != null
              ? selectedDateTime.toString()
              : "Select Data dan Time"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showDialog<DateTime>(
                  context: context,
                  builder: (context) => DatePickerDialog(
                      firstDate:
                          DateTime.now().subtract(const Duration(days: 30)),
                      lastDate: DateTime.now()),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      if (selectedDateTime == null) {
                        selectedDateTime = value;
                      } else {
                        selectedDateTime = selectedDateTime!.copyWith(
                            day: value.day,
                            month: value.month,
                            year: value.year);
                      }
                    });
                  }
                });
              },
              child: const Text("DatePicker")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => TimePickerDialog(
                          initialTime: TimeOfDay.now(),
                        )).then((value) => {
                      if (value != null)
                        {
                          setState(() {
                            if (selectedDateTime == null) {
                              selectedDateTime = DateTime.now();
                            } else {
                              selectedDateTime = selectedDateTime!.copyWith(
                                  hour: value.hour, minute: value.minute);
                            }
                          })
                        }
                    });
              },
              child: const Text("TimePicker")),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
