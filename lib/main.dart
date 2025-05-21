import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textDirection: TextDirection.ltr,
        children:[
          Container(
            color: Colors.red,
            height: 50,
            child: Text(
              'Entete'.toUpperCase(),
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
           // width: 100,
          ),
          Expanded(
            flex: 1,
          child: 
           Container(
            padding: const EdgeInsets.only(top: 0),
            child: Image.asset('assets/images/R.png'),
            
          ),
          ),
         
          Expanded(
            flex: 3,
          child: 
           Container(
            color: Colors.yellow,
            height: 50,
            //width: 100,
          ),
          ),
          Container(
            color: Colors.green,
            height: 50,
            child: Text('Footer'.toUpperCase(),
            style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          )
        ],
  
      ),
       
    );
  }
}
