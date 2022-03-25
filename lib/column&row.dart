import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/info.dart';



class Colums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: Columspage(),
    );
  }
}

class Columspage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ColumsState();
}

class ColumsState extends State<Columspage> {
File?image;

//    Future pickImage( ) async {
//   final image=   await ImagePicker.platform.getImage(
//       source: ImageSource.gallery,
//       maxWidth: null,
//       maxHeight: null,
//       imageQuality: null,
//       preferredCameraDevice: CameraDevice.rear,
//     );
//    if (image==null) return;
//    final imageTemporary=File(image.path);
// setState(() {
//      this.image=imageTemporary;
// });



//    }
  TextStyle text = const TextStyle(
      color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
  final list = [
    info(name: 'Amir1', height: 170, data: DateTime.now()),
    info(name: 'Amir2', height: 175, data: DateTime.now()),
    info(name: 'Amir3', height: 180, data: DateTime.now()),
    info(name: 'Amir4', height: 185, data: DateTime.now()),
    info(name: 'Amir5', height: 190, data: DateTime.now()),
    info(name: 'Amir6', height: 190, data: DateTime.now()),
    info(name: 'Amir7', height: 190, data: DateTime.now()),
  ];
  // final x1=info(name: 'Amir', height: 170, data: DateTime.now());
  // final x2=info(name: 'Amir', height: 170, data: DateTime.now());
  // final x3=info(name: 'Amir', height: 170, data: DateTime.now());
  // final x4=info(name: 'Amir', height: 170, data: DateTime.now());
  // final x5=info(name: 'Amir', height: 170, data: DateTime.now());
  // String s='sdfsd';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        child: Column(
          children: [
            ElevatedButton(onPressed: null, child: Icon(Icons.add),),
            Container(
              height: 300,
            
              child: ListView.builder(
        itemCount: 4,
        
        // physics: ScrollPhysics(parent:AlwaysScrollableScrollPhysics() ),
scrollDirection: Axis.horizontal,
reverse:true,
// controller: ScrollController(
// debugLabel: 'Amir samy',
//  initialScrollOffset: 0,
//  keepScrollOffset: false
// ),
// primary: false,


        itemBuilder: (_,index){
          return  Card(
                elevation: 30,
                shadowColor: Colors.blue,
                // semanticContainer: false,
                // borderOnForeground: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                        color: Colors.white,
                        width: 3,
                        style: BorderStyle.solid)),

                //   color: Colors.amber,

                margin: EdgeInsets.all(10),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '${list[index].name}',
                            style: text,
                          ),
                          Text(
                            '${list[index].height}',
                            style: text,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            '${list[index].data}',
                            style:const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    const CircleAvatar(
                       backgroundColor: Colors.amber,
                       radius: 50,
                       backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.z6URRH3a2I_xDaBpiFzIWQHaE7?pid=ImgDet&w=1622&h=1080&rs=1")
                       
                    ),
                    

                ],
                ),
          );
          

        },
        ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
        itemCount: list.length,
        
        // physics: ScrollPhysics(parent:AlwaysScrollableScrollPhysics() ),
scrollDirection: Axis.horizontal,
reverse:true,
// controller: ScrollController(
// debugLabel: 'Amir samy',
//  initialScrollOffset: 0,
//  keepScrollOffset: false
// ),
// primary: false,


        itemBuilder: (_,index){
          return  Card(
                elevation: 30,
                shadowColor: Colors.blue,
                // semanticContainer: false,
                // borderOnForeground: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                        color: Colors.white,
                        width: 3,
                        style: BorderStyle.solid)),

                //   color: Colors.amber,

                margin: EdgeInsets.all(10),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '${list[index].name}',
                            style: text,
                          ),
                          Text(
                            '${list[index].height}',
                            style: text,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            '${list[index].data}',
                            style:const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    const CircleAvatar(
                       backgroundColor: Colors.amber,
                       radius: 50,
                       backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.z6URRH3a2I_xDaBpiFzIWQHaE7?pid=ImgDet&w=1622&h=1080&rs=1")
                       
                    ),
                    

                ],
                ),
          );
          

        },
        ),
            )
         
          ],
        ),
        
      ),
      floatingActionButton:const   FloatingActionButton(onPressed: null
      ,
      backgroundColor: Colors.tealAccent,
      child: Icon(Icons.add),
      ),
    );
  }
}
