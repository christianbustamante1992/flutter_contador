import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _styleText = new TextStyle(fontSize: 25);
  int _cont = 0;

  void _resetZero() {
    setState(() => _cont = 0);
  }

  void _reduceCont() {
    setState(() => _cont--);
  }

  void _increaseCont() {
    setState(() => _cont++);
  }

  Widget _renderRowsButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _resetZero),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _reduceCont),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _increaseCont)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de clicks:',
              style: _styleText,
            ),
            Text(
              '$_cont',
              style: _styleText,
            )
          ],
        ),
      ),
      floatingActionButton: _renderRowsButtons(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
