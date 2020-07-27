 import 'package:flutter/material.dart';

 myapp() {
 var MyText = Text("IIHT App",
 textDirection: TextDirection.ltr,
 textAlign: TextAlign.center,
 style: TextStyle(color: Colors.black),
 );

var MyIcons = Icon(
  Icons.search,
  color: Colors.black,
  );
var MyExit = Icon(
  Icons.close,
  color: Colors.black,
  );

mypress() {
  print("somebody click the icon");
}
var MyButton = IconButton(icon: MyIcons, onPressed: mypress);
var MyExitButton = IconButton(icon: MyExit, onPressed: mypress);
// ignore: non_constant_identifier_names
var MyApp = AppBar(
  title: MyText, 
  backgroundColor: Colors.orangeAccent.shade400,
 // leading: MyIcons,
  actions: <Widget>[
   MyButton , 
   MyExitButton
  ],
  );

var myhome = Scaffold(
  appBar: MyApp,
  body: Center(child: Text("my home page")),
);

var Homepage = MaterialApp(
  home: myhome,
  debugShowCheckedModeBanner: false,
);
 
return Homepage;
 }