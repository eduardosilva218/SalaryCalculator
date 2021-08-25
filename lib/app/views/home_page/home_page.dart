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
  var _textEditingControllerWorkedHours = new TextEditingController();
  var _textEditingControllerHourlyValue = new TextEditingController();

  void _calculateSalary(double workedHours, double hourlyValue) {
    setState(() {
      var salary = workedHours * hourlyValue;
      final snackBarResult = SnackBar(
          backgroundColor: Colors.deepPurple,
          content: new Text("\$ " + salary.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 18,
                color: Colors.white
              )
          ),
          action: SnackBarAction(
              textColor: Colors.white,
              label: 'CLOSE',
              onPressed: () { }
            )
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBarResult);
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
              child: new TextField(
                controller: _textEditingControllerWorkedHours,
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
                controller: _textEditingControllerHourlyValue,
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
                  _calculateSalary(
                      double.parse(_textEditingControllerWorkedHours.text),
                      double.parse(_textEditingControllerHourlyValue.text)
                  );
                },
                child: const Text('Calculate', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
