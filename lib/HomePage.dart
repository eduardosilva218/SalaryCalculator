import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _salary = 0;

  void _calculateSalary() {
    setState(() {
      _salary = 1367.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
              child: new TextField(
                decoration: new InputDecoration(labelText: "Worked hours"),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r"^(\d+)?\.?\d{0,2}")),
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: new TextField(
                decoration: new InputDecoration(
                    labelText: "Hourly value", prefixText: "\$ "),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r"^(\d+)?\.?\d{0,2}")),
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            SizedBox(
              width: 350.0,
              child: ElevatedButton(
                onPressed: () {
                  _calculateSalary();
                },
                child: const Text('Calculate', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
