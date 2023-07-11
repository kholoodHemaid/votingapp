import 'package:flutter/material.dart';
import 'package:votingapp/Screens/constant.dart';
import 'package:votingapp/Screens/privateBlockachain.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
TextEditingController emailController = TextEditingController();
TextEditingController startTimeController = TextEditingController();
TextEditingController endTimeController = TextEditingController();

class create_vote_screen extends StatefulWidget {
  const create_vote_screen({Key? key}) : super(key: key);

  @override
  State<create_vote_screen> createState() => _create_vote_screenState();
}

class _create_vote_screenState extends State<create_vote_screen> {
  int selectedOption = 0;
  String question = '';
  String description = '';
  List<String> options = [];
  TextEditingController emailController = TextEditingController();
  bool isEmailVisible = false;
  TextEditingController optionController = TextEditingController();
  TextEditingController questionController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void addOption() {
    setState(() {
      String newOption = optionController.text;
      if (newOption.isNotEmpty) {
        options.add(newOption);
        optionController.clear();
      }
    });
  }

  void goToPrivateScreen() {
    setState(() {
      isEmailVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Poll'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: questionController,
                decoration: InputDecoration(
                  hintText: 'Enter the question',
                ),
                onChanged: (value) {
                  setState(() {
                    question = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText: 'Enter the description',
                ),
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text(
                question,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Radio(
                        value: index,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value as int;
                          });
                        },
                      ),
                      Text(options[index]),
                    ],
                  );
                },
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: optionController,
                      decoration: InputDecoration(
                        hintText: 'Enter an option',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: addOption,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                'Poll Status:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Wrap(
                children: [
                  RadioListTile<int>(
                    value: 3,
                    groupValue: selectedOption,
                    onChanged: (int? value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                    title: const Text('Public'),
                  ),
                  RadioListTile<int>(
                    value: 4,
                    groupValue: selectedOption,
                    onChanged: (int? value) {
                      setState(() {
                        selectedOption = value!;
                      });
                      if (selectedOption == 4) {
                        goToPrivateScreen();
                      }
                    },
                    title: const Text('Private'),
                  ),
                  if (isEmailVisible)
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Enter emails (comma-separated)',
                      ),
                    ),
                ],
              ),
              SizedBox(height: 5),
              Padding(padding: EdgeInsets.all(10),
              child: Column(
                children: [
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
                ],
              ),
              ),
              ElevatedButton(
                onPressed: () {
                  String emails = emailController.text;
                  String startTime = startTimeController.text;
                  String endTime = endTimeController.text;
                  // Perform action when button is pressed
                },
                child: Text(
                  'Create',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

