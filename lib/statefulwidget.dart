import 'dart:ffi'; 
import 'package:flutter/material.dart';
class Rebuild extends StatefulWidget{
 Rebuild({Key? key}) : super(key: key);
int t=0;
  @override
  State<StatefulWidget> createState() =>_RebuildState();

}
class _RebuildState extends State<Rebuild>{
  List<Widget> p=[];
  Widget incrementwidget(  )  {
    return  Container(
      
      color: const Color.fromARGB(255, 55, 77, 4),child:Column(children: [
      Image.network(url,fit: BoxFit.fill,
      width: double.infinity,
      ),
     const  Divider(color: Color.fromARGB(255, 96, 136, 4),thickness: 10,indent: 40,)

    ],));
  }
   final String url =  'https://www.bing.com/th?id=OIP.PBwP1trM6-aYvyJkBxt9QQHaFD&w=169&h=110&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2';
 int t=0;
  @override
  Widget build(BuildContext context) {
return   MaterialApp(
  theme: ThemeData(
   colorScheme: ColorScheme.light()
  ),
home: Scaffold(
appBar: AppBar(
leading: IconButton(icon: Icon(Icons.delete),
splashColor: Colors.amber,
onPressed: (){
  setState(() {
    p.removeLast();
  });
},
),
),
body: Container(

  child: ListView.builder(
    itemCount: p.length,
    itemBuilder: (_,inde){
   return p[inde];
   
    },
  
  
  
  )
),
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.add),
  splashColor: Colors.pinkAccent,
  onPressed: (){
    setState(() {
      p.add(incrementwidget());
       
    });
  }
),
)
);
}

  incrementwidget2()  {
       for(int i=0;i<9;++i ){
      return Column(
        children: [
          Container(height: 400,color: Colors.red,),
          Divider(color: Colors.black,),
//Container(height: 200,color: Colors.red,),
        ],
      );
       }
   
    }
  Color c=Colors.blue ;
}

