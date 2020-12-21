import 'package:customised_alert/AlertBox.dart';
import 'package:customised_alert/AlertButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FlatButton(
            color: Colors.red[200],
            child: Text(
              'Alert',
              style: TextStyle(color: Colors.black38),
            ),
            onPressed: (){
              return showDialog(
                context: context,
                builder: (BuildContext buildcontext){
                  return AlertDialog(
                    contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    backgroundColor: Colors.white,
                    content: AlertBox(
                      buttons: [
                        AlertButton(title:"button1" , buttonColor: Colors.red[200], OnPressCallback: (result) {}),
                        AlertButton(title:"button2" , buttonColor: Colors.blue[200], OnPressCallback: (result) {}),
                        AlertButton(title:"button3" , buttonColor: Colors.green[200], OnPressCallback: (result) {}),
                        AlertButton(title:"button4" , buttonColor: Colors.yellow[200], OnPressCallback: (result) {}),

                      ],),
                  );
                }
              );
            },
          ),
        ),
      )
    );
  }
}
