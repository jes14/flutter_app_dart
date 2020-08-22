import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    main();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Adi Dart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isBluetoothOn = false;

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
            IconButton(
              icon: Icon(Icons.bluetooth),
              iconSize: 25,
              color: _isBluetoothOn ? Colors.blue : Colors.grey,
              onPressed: () {
                setState(() {
                  _isBluetoothOn = !_isBluetoothOn;
                });
              },
            ),
//            Text('Is Bluetooth On : $_isBluetoothOn'),
            Text(
              'Welcome to AdiDart',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
//              style: TextStyle(fontWeight: FontWeight.bold),
              style: TextStyle(height: 2, fontSize: 30),
            ),
            Text(
              'Vision-System for Steeldart',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
//              style: TextStyle(fontWeight: FontWeight.bold),
              style: TextStyle(height: 2, fontSize: 15),
            ),
            ButtonBar(
                children: [
                  RaisedButton(
                    child: Text("Play game"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlayGame()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text("Board calibration"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Calibration()),
                      );
                    },
                  ),
                ],
                alignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max)
          ],
        ),
      ),
    );
  }
}
//For performing some operations asynchronously

class PlayGame extends StatelessWidget {
  bool _isBluetoothOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Game setting"),
        ),
        body: new Container(
//            padding: EdgeInsets.all(8.0),
            child: new Column(
//                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              new IconButton(
                  icon: Icon(Icons.bluetooth),
                  iconSize: 25,
                  color: _isBluetoothOn ? Colors.blue : Colors.grey,
                  onPressed: () {}),
              new Text(
                'Game settings:',
                style:
                    new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Game',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  new Radio(
                    value: 0,
                    groupValue: 'dd',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '301',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: 'hi',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '501',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: 'there',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '701',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 0,
                    groupValue: 'dd',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    'Cricket',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 0,
                    groupValue: 'dd',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    'Half it',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Players',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  new Radio(
                    value: 0,
                    groupValue: 'dd',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: 'hi',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: 'there',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 0,
                    groupValue: 'dd',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Play as',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  new Radio(
                    value: 0,
                    groupValue: 'dd',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: 'hi',
//    onChanged: _handleRadioValueChange1,
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      onPressed: () {
                        // Navigate back to first route when tapped.
                      },
                      child: Text('Start game'),
                    ),
                  ])
            ])));
  }
//  };
}

class Calibration extends StatelessWidget {
  bool _isBluetoothOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calibration"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            IconButton(
                icon: Icon(Icons.bluetooth),
                iconSize: 25,
                color: _isBluetoothOn ? Colors.blue : Colors.grey,
                onPressed: () {}),
            Text(
              'Board calibration',
              style: new TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              'Dartboard to calibrate:',
              style: new TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
              },
              child: Text('WINMAU BLADE 5DC'),
            ),
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
              },
              child: Text('AQUIRE NEW DARTBOARD'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartCalibration()),
                );
              },
              child: Text('START CALIBRATION'),
            ),
          ])),
    );
  }
}

class StartCalibration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start a calibration"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              'Board calibration',
              style: new TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              'The Dartboard get calibrated This may take around 2 Minutes Remove Arrows before starting:',
              style: new TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ])),
    );
  }
}
