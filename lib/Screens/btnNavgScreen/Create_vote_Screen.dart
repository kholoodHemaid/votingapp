import 'package:flutter/material.dart';
import 'package:votingapp/Screens/constant.dart';


class create_vote_screen extends StatefulWidget {
  const create_vote_screen({Key? key}) : super(key: key);

  @override
  State<create_vote_screen> createState() => _create_vote_screenState();
}

class _create_vote_screenState extends State<create_vote_screen> {
  int selectedOption = 0;
  String question = '';
  List<String> options = [];
  TextEditingController optionController = TextEditingController();
  TextEditingController questionController = TextEditingController();

  void addOption() {
    setState(() {
      String newOption = optionController.text;
      if (newOption.isNotEmpty) {
        options.add(newOption);
        optionController.clear();
      }
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
                'Options:',
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
                    },
                    title: const Text('Private'),
                  ),
                ],
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  // Perform action when button is pressed
                },
                child: Text(
                  'Create Vote',
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
