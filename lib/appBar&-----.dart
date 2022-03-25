import 'package:flutter/material.dart';

class AppBar3 extends StatelessWidget {
  const AppBar3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futter App Bar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const AppBarHome(),
    );
  }
}

class AppBarHome extends StatefulWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppBarPage();
}

class _AppBarPage extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Background App Bar'),
      ),
      body: Container(
        alignment: Alignment.center,
      child: Stack(
       alignment: Alignment.center,
       fit: StackFit.passthrough,
  children: [
    Container(height: 400,width: 400,color: Colors.red, child:const  Text('Data_Form Web Site to en amir '),),
    Container(height:200 ,width: 200,color: Colors.amber,),
    Container(height: 100,width: 100,color: Colors.greenAccent,),
     
  ],
      ),
      ),
      floatingActionButton: const FloatingActionButton(onPressed: null),
    );
  }
}
