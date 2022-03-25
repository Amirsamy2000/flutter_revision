import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Images extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Imagespage(),
    );
  }

}
class  Imagespage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ImagesState();
}

class _ImagesState extends State<Imagespage> {
  List<Widget> show=[];
   Widget retrive_widget(){
      return Container(
      height: 200,
      width: 200,
      color:Colors.grey
      );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(
         title:const Text("Images") ,
         ),
         body: Container(
           child:   Column(
             children: [
             Container(
               child:   ListView.builder(
                 itemCount: show.length,
                 itemBuilder: (_,index){
                   return show[index];
                 }),
             )
             ],
           ),
         
         ),
         floatingActionButton: FloatingActionButton(onPressed: (){
           setState(() {
             show.add(retrive_widget());
           });
         },),
   );
  }
}