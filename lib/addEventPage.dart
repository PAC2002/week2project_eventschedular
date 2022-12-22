import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewEvent extends StatefulWidget {
  @override
  State<NewEvent> createState() => _NewEventState();
}

class _NewEventState extends State<NewEvent> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[200],
        appBar: AppBar(
          title: const Text('ADD NEW EVENT'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.multiline,
                // expands: true,

                maxLines: null,
                controller: _textEditingController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10.0),
                  filled: true,
                  fillColor: Colors.blue[900],
                  labelText: 'EVENT',
                  // hintText: 'EVENT',
                  // prefixText: 'EVENT',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  prefixIcon: const Icon(Icons.calendar_month),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightGreen,
                      width: 10.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              Builder(builder: (context) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: const Size(350, 30),
                  ),
                  onPressed: (() {
                    String EventData = _textEditingController.text;
                    Navigator.of(context).pop(EventData);
                  }),
                  child: const Text(
                    'ADD',
                  ),
                );
              }),
            ],
          ),
        ));
  }
}
