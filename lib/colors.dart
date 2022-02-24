import 'package:flutter/material.dart';
import 'package:flutter_application_1/slivers.dart';
class Colorss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return DefaultTabController(length: 4,
 child:  MaterialApp(
   debugShowCheckedModeBanner: false,
   home: Scaffold(
     body: CustomScrollView(
            slivers:  [
          //  const  FloatingActionButton(onPressed: null,child: Icon(Icons.chat),),
                const SliverAppBar(
                 title: Text("What's Up"),
                 actions: [
                    SizedBox(width: 7,),
                   Icon(Icons.search),
                   SizedBox(width: 17,),
                    Icon(Icons.three_p_sharp),
                     SizedBox(width: 17,),
                 ],
                 backgroundColor: Colors.teal,
                 floating: true,
                 pinned: true,
                expandedHeight: 120,
                 bottom:TabBar(
                   indicatorColor:Colors.white,
                   tabs:  [
                    Tab(child: Icon(Icons.add_a_photo_rounded )),
                          Tab(
                            text: 'Chats',
                          ),
                           Tab(
                            text: 'Calls',
                          ),
                           Tab(
                            text: 'Story',
                          ),
                 ],
                 
                 ),

              ),
            SliverFixedExtentList( itemExtent: 250,
            delegate: SliverChildListDelegate([
        
         Container(color: Colors.red[300],height: 200,),
         Container(color:const Color.fromARGB(255, 12, 209, 61),height: 200,),
         Container(color: const Color(0x999679B9B),height: 200,),
         Container(color: const Color(0x999679B9B),height: 200,),
         Container(color:Colors.purple,height: 200,),
         Container(color:const Color.fromRGBO(3, 5, 200, 0.4),height: 200,)
            ]),),
            SliverFillRemaining(
              child:                  FloatingActionButton(onPressed: null,child: Icon(Icons.chat),),

            )
            ],  

     ),
   ),
 ),
);
  }

}