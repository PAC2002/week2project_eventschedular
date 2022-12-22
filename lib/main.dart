import 'package:flutter/material.dart';
import 'package:week2_project_eventschedular/addEventPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        appBar: AppBar(
          title: const Text('EVENT SCHEDULAR'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(
                  top: 10.0, bottom: 20.0, right: 5.0, left: 5.0),
              color: Colors.grey[50],
              child: Center(
                child: _list[index],
              ),
            );
          },
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              String NewEventData = await Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => NewEvent())));
              setState(() {
                _list.add(Text(NewEventData));
              });
            },
            child: const Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
