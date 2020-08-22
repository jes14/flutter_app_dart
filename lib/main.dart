import 'package:flutter/material.dart';
//import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter/services.dart';

void main() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    main();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Adi Dart'),
    );
  }
}

//void _portraitModeOnly() {
//  SystemChrome.setPreferredOrientations([
//    DeviceOrientation.portraitUp,
//    DeviceOrientation.portraitDown,
//  ]);
//}
//
//void _enableRotation() {
//  SystemChrome.setPreferredOrientations([
//    DeviceOrientation.portraitUp,
//    DeviceOrientation.portraitDown,
//    DeviceOrientation.landscapeLeft,
//    DeviceOrientation.landscapeRight,
//  ]);
//}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isBluetoothOn = false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
            Text(
              'Welcome to AdiDart',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),


              IconButton(
                icon: Icon(Icons.bluetooth),
                iconSize: 30,
                color: _isBluetoothOn? Colors.blue : Colors.grey,
                onPressed: () {
                  setState(() {
                    _isBluetoothOn = !_isBluetoothOn;
                  });
                },
              ),
            Text('Is Bluetooth On : $_isBluetoothOn'),
            ButtonBar(children:[

              RaisedButton(
                child:Text("Play game"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlayGame()),
                  );
                },
              ),
//              RaisedButton(
//                child:Text("Practice"),
//                onPressed: () {  },
//              ), RaisedButton(
//                child:Text("Statistics"),
//                onPressed: () {  },
//              ),
              RaisedButton(
                child:Text("Board calibration"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calibration()),
                  );
                },
              ),
            ],
                alignment:MainAxisAlignment.center,
                mainAxisSize:MainAxisSize.max
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
 //For performing some operations asynchronously

class PlayGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Game setting"),
        ),
        body: new Container(
            padding: EdgeInsets.all(8.0),
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Game settings:',
                    style: new TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(8.0),
                  ),
                  new Divider(height: 5.0, color: Colors.black),
                  new Padding(
                    padding: new EdgeInsets.all(8.0),
                  ),
                  new Text(
                    'Game',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
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
                    ],
                  ),
                  new Divider(height: 5.0, color: Colors.black),
                  new Padding(
                    padding: new EdgeInsets.all(8.0),
                  ),
                  new Text(
                    'Players',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
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
                  new Divider(height: 5.0, color: Colors.black),
                  new Padding(
                    padding: new EdgeInsets.all(8.0),
                  ),
                  new Text(
                    'Play as',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
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
                      )
                    ],
                  ),
                ]
            )
        ));
  }
//  };
  }


class Calibration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calibration"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('WINMAU BLADE 5DC'),
        ),
      ),
    );
  }
}
