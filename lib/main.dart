import 'package:bytebank2/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp2());
  /*
  save(Contact(0, 'JOAO', 1000)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
   */
  //_dao.findAll().then((contacts) => debugPrint(contacts.toString()));
}

class BytebankApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
