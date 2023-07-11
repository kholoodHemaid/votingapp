import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class PrivateScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController dateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Private Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Enter emails (comma-separated)',
              ),
            ),


            SizedBox(height: 16.0),
            InkWell(
              onTap: () {
                DatePicker.showDateTimePicker(
                  context,
                  showTitleActions: true,
                  onConfirm: (dateTime) {
                    startTimeController.text = dateTime.toString();
                  },
                  currentTime: DateTime.now(),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Start Time',
                      ),
                      Icon(Icons.date_range),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            InkWell(
              onTap: () {
                DatePicker.showDateTimePicker(
                  context,
                  showTitleActions: true,
                  onConfirm: (dateTime) {
                    endTimeController.text = dateTime.toString();
                  },
                  currentTime: DateTime.now(),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'End Time',
                      ),
                      Icon(Icons.date_range),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform action when button is pressed
                String emails = emailController.text;
                String startTime = startTimeController.text;
                String endTime = endTimeController.text;
                String dateTime = dateTimeController.text;

                // Do something with the entered values
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}


