import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
import 'package:untitleddoctor/core/utils/images_manager.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/widgets/custom_button.dart';

class CustomDateTimePicker extends StatefulWidget {
  const CustomDateTimePicker({super.key});

  @override
  State<CustomDateTimePicker> createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  int _selectedHour = 0;
  int _selectedMinute = 0;

  String formatTime(int hour, int minute) {
    return "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " Appointment",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              firstDay: DateTime(2000),
              lastDay: DateTime(2100),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: ColorManager.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            verticalSpace(24),
            Center(
              child: Text(
                formatTime(_selectedHour, _selectedMinute),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            verticalSpace(24),
            const Text(
              "Available Time:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(24, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedHour = index;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor:
                              _selectedHour == index
                                  ? ColorManager.primaryColor
                                  : Colors.grey[300],
                          child: Text(
                            index.toString().padLeft(2, '0'),
                            style: TextStyle(
                              color:
                                  _selectedHour == index
                                      ? Colors.white
                                      : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            verticalSpace(24),
            const Text(
              "Reminder Me Before:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(60, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedMinute = index;
                          });
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor:
                              _selectedMinute == index
                                  ? ColorManager.primaryColor
                                  : Colors.grey[300],
                          child: Text(
                            index.toString().padLeft(2, '0'),
                            style: TextStyle(
                              color:
                                  _selectedMinute == index
                                      ? Colors.white
                                      : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            verticalSpace(30),
            CustomButton(
              title: 'Confirm',
              onTap: () {
                showDialog(
                  context: context,
                  builder:
                      (context) => Center(
                        child: SingleChildScrollView(
                          child: AlertDialog(
                            backgroundColor: ColorManager.whit,
                            content: Column(
                              children: [
                                Image.asset(ImagesManager.like, width: 180),
                                verticalSpace(10),
                                Text(
                                  "Thank You !",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),
                                Text(
                                  "Your Appointment Successful",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                                verticalSpace(10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "You booked an appointment with Dr.Pediatrician Purpieson",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                verticalSpace(10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Row(
                                    children: [
                                      Text(
                                        _selectedDay
                                                ?.toLocal()
                                                .toString()
                                                .split(' ')[0] ??
                                            'No date selected',
                                        style: TextStyle(
                                          color: ColorManager.primaryColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                      horizontalSpace(5),
                                      Text(
                                        "Time: ${formatTime(_selectedHour, _selectedMinute)}",
                                        style: TextStyle(
                                          color: ColorManager.primaryColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                verticalSpace(10),
                                CustomButton(
                                  title: 'Done',
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  widthButton: double.infinity,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                );
              },
              widthButton: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
