import 'package:flutter/material.dart';
//tababr ,TextStyle, container and shape,
class LessonOne extends StatelessWidget{
   final String url =      'https://www.bing.com/th?id=OIP.PBwP1trM6-aYvyJkBxt9QQHaFD&w=169&h=110&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2';
  const LessonOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
home:  Scaffold(
    appBar: AppBar(
      title: const Text('Bar'),
      centerTitle: true,
      bottom:const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  DefaultTabController(length: 4, child:TabBar(tabs: [
           Tab(child: Icon(Icons.earbuds)),
            Tab(child: Icon(Icons.access_alarms_sharp)),
            Tab(child: Icon(Icons.access_alarms_sharp)),
            Tab(child: Icon(Icons.earbuds)),
        ]
        ),
        ),
        )
    ),
    body: Container(
   
      color: Colors.black26,
      //alignment: Alignment.center,
      child: Column(
        children: [
         Container(height: 200,width: 200,
           decoration: const BoxDecoration(
             shape: BoxShape.circle,
             color: Colors.amber,
           ),),
           const  Divider(
            height: 30 ,
            color: Colors.pink,
            thickness: 2,
            indent:50,
            endIndent: 50,
            ),
            Container(height: 200,width: 200,
           decoration:const BoxDecoration(
             shape: BoxShape.circle,
             color: Colors.blueAccent,
           )

            ),
            const Text(
              'Hello world',
             textAlign: TextAlign.center,
            // textDirection: TextDecoration.overline,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black38,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                letterSpacing: 3,
                wordSpacing: 10,
                 height: 5,
                backgroundColor: Color.fromARGB(255, 235, 255, 189),
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius:0,
                    offset: Offset(3, 3),
                  ),
                ],
                decoration: TextDecoration.overline,
                decorationColor:  Color.fromARGB(255, 245, 14, 14),
                decorationStyle: TextDecorationStyle.dashed,
                decorationThickness: 10,
              ),
              
             ) ,
        ],
      ),
    ),
  ),
  );
 
  }

}