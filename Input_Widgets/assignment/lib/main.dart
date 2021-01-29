import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = '';
  String _display = '';

  void _onChanged(String value) {
    setState(() {
      _value = value;
    });
  }

  void _onClick() {
    setState(() {
      _display = _value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Name here'),
        ),
        body: new Container(
            padding: new EdgeInsets.all(32.0),
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Text(_display),
                  new TextField(onChanged: _onChanged,),
                  new RaisedButton(
                    onPressed: _onClick,
                    child: new Text("Click Me"),
                  )
                ],
              ),
            )));
  }
}
