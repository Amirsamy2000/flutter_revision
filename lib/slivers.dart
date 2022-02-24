import 'package:flutter/material.dart';
class sliverbar extends StatelessWidget{
  const sliverbar({Key? key}) : super(key: key);
   final String url =  'https://www.bing.com/th?id=OIP.PBwP1trM6-aYvyJkBxt9QQHaFD&w=169&h=110&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2';
  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Scaffold(
       body: CustomScrollView(
      // reverse: true, 
         slivers:  [
          sl(url),
         sl(url),
          sl(url),
           sl(url),
             SliverFillRemaining(
               child:    Container(color: Colors.lightGreen),
              // fillOverscroll:true,
             ),
             /*  SliverFixedExtentList(
               itemExtent: 200,
               delegate: SliverChildListDelegate([
         Container(color: Colors.amber,),
         Container(color: Colors.blue,),
         Container(color: Colors.black,),
         Container(color: Colors.amber,),
         Container(color: Colors.blue,),
         Container(color: Colors.black,),
         Container(color: Colors.amber,),
         Container(color: Colors.blue,),
         Container(color: Colors.black,),
         Container(color: Colors.amber,),
         Container(color: Colors.blue,),
         Container(color: Colors.black,),
          Container(color: Colors.amber,),
         Container(color: Colors.blue,),
         Container(color: Colors.black,),
         Container(color: Colors.amber,),
         Container(color: Colors.blue,),
//Container(child: Image.network(url,fit: BoxFit.cover),color: Colors.black,)
               ]
               ) ,             
                ), */
        SliverList(
          delegate: SliverChildListDelegate([
         Container(color: Colors.orange,height: 200,),
         Container(color: Colors.lightGreen,height: 200,),
         Container(color: Colors.red,height: 200,),
         Container(color: Colors.purple,height: 200,),
         Container(color: Colors.white70,height: 200,)
          ]))
        
         ] 
       
       ),
    ),
  
  );
    
  }
}
 SliverAppBar sl(url){
   return 
               SliverAppBar(
               //floating: true,
                pinned: true,
             // stretch: true,
                 title:  Text("Sliver APP Bar "),
                 centerTitle: true,
               // snap: true,
                 expandedHeight: 200,
                 backgroundColor: Colors.amber,
                 leading:const Icon(Icons.ac_unit),
                 actions: const[
                    Icon(Icons.ac_unit),
                     Icon(Icons.ac_unit),
                      Icon(Icons.ac_unit),
                 ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(url,fit: BoxFit.cover,),
             /* stretchModes:  const [StretchMode.zoomBackground,
             StretchMode.blurBackground,
             ], */
              ),
            
               );
 }