import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arrIndex = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('ListWheelScrollView'),
      ),
      body: Center(
        child: ListWheelScrollView(
            itemExtent: 200,
            children: arrIndex.map((value){
                return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(child: Text('$value', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
                ),
                width: double.infinity,
                  ),
              );
            }).toList(),
        ),
      ));
  }
}
