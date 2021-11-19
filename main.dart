import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

String ans = "";
List fruits = [
  'Rambutan',
  'Kiwi',
  'Orange',
  'banana',
  'mango'
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lists in Flutter',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists in Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          controller: myController,
          
          decoration: InputDecoration(
              hintText: 'Input a number from 1 to' + fruits.length.toString()),
              
              
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              if (int.parse(myController.text) > fruits.length) {
                ans = "Please enter value 1 - "+ fruits.length.toString();
              } else {
                ans = fruits[int.parse(myController.text)];
              }
              return AlertDialog(
                content: Text(ans),
              );
            },
          );
        },
        tooltip: 'Show result',
        child: const Icon(Icons.send),
      ),
    );
  }
}