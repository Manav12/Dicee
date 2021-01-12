import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
        
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

  
  class Dicepage extends StatefulWidget {
    @override
    _DicepageState createState() => _DicepageState();
  }
  
  class _DicepageState extends State<Dicepage> {
    int left =1;
    int right =1;
    void change(){
      setState(() {
        left =Random().nextInt(6)+1;
        right = Random().nextInt(6)+1;
      });
    }
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Row(
          children: <Widget>[
            Expanded(child:
          FlatButton( 
            onPressed: (){
                change();
            },
            child: Image.asset('images/dice$left.png')
              ),),
              Expanded(child:
              FlatButton( 
                onPressed: (){
                  change();
                },
            child: Image.asset('images/dice$right.png')
              ),),
              
          ],
        ));
      
    }
  }
  

