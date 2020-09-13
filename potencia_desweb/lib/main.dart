import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de potencias',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Conversor(title: 'Potencias // vatios a kilovatios'),
    );
  }
}

class Conversor extends StatefulWidget {
  Conversor({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ConversorState createState() => _ConversorState();
}

class _ConversorState extends State<Conversor> {

  var _output = "";
  final inputController = TextEditingController();
  
  void _potencia(){
    setState(() {
      double inicial = double.parse(inputController.text);
      double pote_salida = (inicial / 1000);
      _output = "$pote_salida";
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
            children: [
              TextFormField(
                controller: 
                inputController,
                ),
              RaisedButton(
                onPressed: () {
                  _potencia();
                  },),
              Text ("$_output"),
            ],
           ),
        ), 
      );
  }
}