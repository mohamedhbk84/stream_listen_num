import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {

  // The First Part
  //1- Create a List containing random numbers consisting of positive and negative and convert all negative numbers into positive
  List mohamed_list = [5 ,-3,4,2,-8,10];
  List postive_list = [ for (var i in mohamed_list) i.abs()];
  print([ for (var i in mohamed_list) i.abs()]);

  // 2- Get two numbers from List whose sum equals 12 using method
  sumTwoNumber(postive_list);

  runApp(const MyApp());
}

void sumTwoNumber(List postive_list){
  for (int i=0;i<postive_list.length;i++){
    for(int y =0;y<postive_list.length;y++){
      if(postive_list[i] + postive_list[y]==12)
        print("${postive_list[i]},${postive_list[y]}");
    }
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Listen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List  stream_data = [];
  void _Counter() {
    setState(() {
      if(stream_data.length<10)
      Timer(Duration(seconds: 10), (){
        setState(() {
          stream_data.add(Random().nextInt(100));
        });

      });

    });
  }

  @override
  Widget build(BuildContext context) {
    _Counter();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Listen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.7,
            child: ListView.builder(
              itemCount: stream_data.length,
                itemBuilder: (context,index){
                return Container(
                    height: 30,
                    color: Colors.grey.shade400,
                    child: Center(child: Text(stream_data[index].toString())));
                }),
          ),
          Container(
            color: Colors.blueGrey,
            child: Text("Name Test",style: TextStyle(color: Colors.white),),
          )
        ],
      ),
      );

  }
}
