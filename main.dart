  import 'package:flutter/material.dart';
  import 'package:audioplayers/audio_cache.dart';

  //import 'package:character/characters.dart';
  main() {
    runApp(MyApp());
  }

  MyBody() { 
     return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Icon(Icons.search),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(image: AssetImage("images/photos.png")),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 20,
                            color: Colors.blue  
                          ),
                        ),
                      
                    height:200,
                    width:200,
                    child: RaisedButton (
                       onPressed: () {

                        print("clicked button 1....");
                        },
                    child: Card(
                    color: Colors.blue,
                    elevation: 20,
                    child: Image.asset('images/photos.png'),
                    //Icon(Icons.search),
                    ),
                   ), 
                  ), 
                     Container(
                       decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(image: AssetImage("images/song.png")),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 20,
                            color: Colors.blue  
                          ),
                        ),
                    height:200,
                    width:200,
                    child: RaisedButton (
                       onPressed: () {
                          AudioCache player = AudioCache();
                          player.play("audio/test.amr");
                        print("clicked button 1.2...");
                        },
                    child: Card(
                    color: Colors.blue,
                    elevation: 20,
                    child: Image.asset("images/song.png"),
                    ),
                   ), 
                  ), 
                ],
           ),
           Column(  
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Icon(Icons.storage),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(image: AssetImage("images/storage.jpg")),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 20,
                            color: Colors.blue  
                          ),
                        ),
                      
                        height:200,
                        width:200,
                        child: RaisedButton(
                          onPressed: () {
                            print("clicked button 2....");
                            },
                    child:  Card(
                    color: Colors.blue,
                    elevation: 20,
                    child: Image.asset("images/storage.jpg"),
                  ),
                ),
                      ),
                      
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(image: AssetImage("vlc.jpg")),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 20,
                            color: Colors.blue  
                          ),
                        ),
                    height:200,
                    width:200,
                    child: RaisedButton(onPressed: (){
                      print("clicked button 2.2....");
                    },
                    child:  Card(
                    color: Colors.blue,
                    elevation: 20,
                    child: Image.asset("images/vlc.jpg"),
                  ),
                    ),
                    
                ),
              
            ],
         ),
        /* Column(
                    children: [
                      
                      Icon(Icons.search),
                      Container(
                    height:100,
                    width:100,
                    child: RaisedButton(onPressed: (){
                      print("clicked button 3.....");
                    },
                    child:  Card(
                    color: Colors.blue,
                    elevation: 20,
                    child: Text("mybutton 3"),
                  ),
                    ),
                    
                ),
                Container(
                    height:100,
                    width:100,
                    child: RaisedButton(onPressed: (){
                      print("clicked button 3.2....");
                    },
                    child:  Card(
                    color: Colors.blue,
                    elevation: 20,
                    child: Text("mybutton 3.2"),
                  ),
                    ),
                    
                ),*/
            ],
         );
  }

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("IIHT App"),
        ),
        body: MyBody(),
      )
      );
    
    
    }
  }