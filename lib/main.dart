import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
//import 'package:flutter_ble_lib/flutter_ble_lib.dart';
//import 'package:permission_handler/permission_handler.dart';

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
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Text(
              'Welcome to AdiDart',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
//              style: TextStyle(fontWeight: FontWeight.bold),
              style: TextStyle(height: 2, fontSize: 20),
            ),
            Text(
              'Vision-System for Steeldart',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
//              style: TextStyle(fontWeight: FontWeight.bold),
              style: TextStyle(height: 2, fontSize: 15),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
              new IconButton(
                  icon: Icon(Icons.bluetooth),
                  iconSize: 25,
                  color: _isBluetoothOn ? Colors.blue : Colors.grey,
                  onPressed: () {}),
//              new Text(
//                'Game settings:',
//                style:
//                    new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//              ),
                  new Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                mainAxisAlignment: MainAxisAlignment.start,
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
                mainAxisAlignment: MainAxisAlignment.start,
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
  String dropdownValue = 'Winmau Blade 5 DC';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Board Calibration"),
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
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
            Text(
              'Dartboard to calibrate:',
              style: new TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
                ),
                onChanged: (String newValue) {
            //    setState(() {
            //    dropdownValue = newValue;
            //    });
                },
                items: <String>['Winmau Blade 5 DC', 'Winmau Blade 5', 'Winmau Blade 4', 'Unicorn Eclipse HD2']
                    .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
                );
                }).toList(),
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

////

//import 'dart:io';
//import 'package:flutter/material.dart';
//import 'package:flutter_ble_lib/flutter_ble_lib.dart';
//import 'package:permission_handler/permission_handler.dart';
//
//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter BLE Demo',
//      home: MyHomePage(title: 'Flutter BLE Demo Page'),
//    );
//  }
//}
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _MyHomePageStateTest createState() => _MyHomePageStateTest();
//}
//
//class _MyHomePageStateTest extends State<MyHomePage> {
//  BleManager _bleManager = BleManager(); //BLE 메니저
//  bool _isScanning= false;               //스캔 확인용
//  List<BleDeviceItem> deviceList = [];   //BLE 정보 저장용
//
//  @override
//  void initState() {
//    init(); //BLE 초기화
//    super.initState();
//  }
//
//  void init() async {
//    //BLE 생성
//    await _bleManager.createClient(
//        restoreStateIdentifier: "example-restore-state-identifier",
//        restoreStateAction: (peripherals) {
//          peripherals?.forEach((peripheral) {
//            print("Restored peripheral: ${peripheral.name}");
//          });
//        })
//        .catchError((e) => print("Couldn't create BLE client  $e"))
//        .then((_) => _checkPermissions()) //BLE 생성 후 퍼미션 체크
//        .catchError((e) => print("Permission check error $e"));
//    //.then((_) => _waitForBluetoothPoweredOn())
//  }
//  //퍼미션 체크 및 없으면 퍼미션 동의 화면 출력
//  _checkPermissions() async {
//    if (Platform.isAndroid) {
//      if (await Permission.contacts.request().isGranted) {
//      }
//      Map<Permission, PermissionStatus> statuses = await [
//        Permission.location
//      ].request();
//      print(statuses[Permission.location]);
//    }
//  }
//
//  //스캔 ON/OFF
//  void scan() async {
//    if(!_isScanning) {
//      deviceList.clear();
//      _bleManager.startPeripheralScan().listen((scanResult) {
//        // 페리페럴 항목에 이름이 있으면 그걸 사용하고
//        // 없다면 어드버타이지먼트 데이터의 이름을 사용하고 그것 마져 없다면 Unknown으로 표시
//        var name = scanResult.peripheral.name ?? scanResult.advertisementData.localName ?? "Unknown";
//        /*
//        // 여러가지 정보 확인
//        print("Scanned Name ${name}, RSSI ${scanResult.rssi}");
//        print("\tidentifier(mac) ${scanResult.peripheral.identifier}"); //mac address
//        print("\tservice UUID : ${scanResult.advertisementData.serviceUuids}");
//        print("\tmanufacture Data : ${scanResult.advertisementData.manufacturerData}");
//        print("\tTx Power Level : ${scanResult.advertisementData.txPowerLevel}");
//        print("\t${scanResult.peripheral}");
//        */
//        //이미 검색된 장치인지 확인 mac 주소로 확인
//        var findDevice = deviceList.any((element) {
//          if(element.peripheral.identifier == scanResult.peripheral.identifier)
//          {
//            //이미 존재하면 기존 값을 갱신.
//            element.peripheral = scanResult.peripheral;
//            element.advertisementData = scanResult.advertisementData;
//            element.rssi = scanResult.rssi;
//            return true;
//          }
//          return false;
//        });
//        //처음 발견된 장치라면 devicelist에 추가
//        if(!findDevice) {
//          deviceList.add(BleDeviceItem(name, scanResult.rssi, scanResult.peripheral, scanResult.advertisementData));
//        }
//        //갱긴 적용.
//        setState((){});
//      });
//      //스캔중으로 변수 변경
//      setState(() { _isScanning = true; });
//    }
//    else {
//      //스캔중이었다면 스캔 정지
//      _bleManager.stopPeripheralScan();
//      setState(() { _isScanning = false; });
//    }
//  }
//
//  //디바이스 리스트 화면에 출력
//  list() {
//    return ListView.builder(
//      itemCount: deviceList.length,
//      itemBuilder: (context, index) {
//        return ListTile(
//          //디바이스 이름과 맥주소 그리고 신호 세기를 표시한다.
//          title: Text(deviceList[index].deviceName),
//          subtitle: Text(deviceList[index].peripheral.identifier),
//          trailing: Text("${deviceList[index].rssi}"),
//        );
//      },
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//        //디바이스 리스트 함수 호출
//        child: list(),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: scan, //버튼이 눌리면 스캔 ON/OFF 동작
//        child: Icon(_isScanning?Icons.stop:Icons.bluetooth_searching), //_isScanning 변수에 따라 아이콘 표시 변경
//      ),
//    );
//  }
//}
//
////디바이스 정보 저장용 클래스
//class BleDeviceItem {
//  String deviceName;
//  Peripheral peripheral;
//  int rssi;
//  AdvertisementData advertisementData;
//  BleDeviceItem(this.deviceName, this.rssi, this.peripheral, this.advertisementData);
//}
