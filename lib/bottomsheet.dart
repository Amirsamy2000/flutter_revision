import 'package:flutter/material.dart';
import 'info.dart';
import 'package:intl/intl.dart';
class Bottom_sheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   theme: ThemeData(
     colorScheme: ColorScheme.dark(),
   //fontFamily: 'Quicksand',
   appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
       fontFamily: 'OpenSans',
    )
   )
   ),
   
   home: Bottom_sheetPage(),
 );
  }
  
}
class Bottom_sheetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Bottom_sheetState();
}
class _Bottom_sheetState extends State<Bottom_sheetPage>{
  TextStyle text = const TextStyle(
      color: Colors.white,
      fontFamily: 'OpenSans'
      // Quicksand
      );

    final list = [
    info(name: 'Amir1', height: 170, data: DateTime.now()),
    info(name: 'Amir2', height: 175, data: DateTime.now()),
    info(name: 'Amir3', height: 180, data: DateTime.now()),
    info(name: 'Amir4', height: 185, data: DateTime.now()),
    info(name: 'Amir5', height: 190, data: DateTime.now()),
    info(name: 'Amir6', height: 190, data: DateTime.now()),
    info(name: 'Amir7', height: 190, data: DateTime.now()),
  ];

  Show_model(){

  showModalBottomSheet(
    constraints: BoxConstraints(
maxHeight: 600,
// maxWidth: 200
    ),
  enableDrag: true,
  isScrollControlled: true,
  isDismissible: true,
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(20)
    ),
    context: context, builder: ( context ){

  return   Container(
child: ListView(children: [
    ...list.map((e) {
              return Card(
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

                margin:const EdgeInsets.all(10),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '${e.name}',
                            style: text,
                          ),
                          Text(
                            '${e.height}',
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
                            '${DateFormat().add_MMMM().format(e.data!)}',
                           style:const TextStyle(fontSize: 20, fontFamily: 'OpenSans'
                           ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            })
]),
  );

 
  });
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.teal,
  title: const Text('Bottom Sheet'),
  centerTitle: true,
   
),
  floatingActionButton: FloatingActionButton(

    onPressed:Show_model,
  ),
);
  }

}