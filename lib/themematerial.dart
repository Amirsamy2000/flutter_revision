

import 'package:flutter/material.dart';

class theme_all extends StatelessWidget {
   List<Color> c =[
    Colors.black,
    Colors.red,
   ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(
      textTheme:const  TextTheme(
        headline6: TextStyle(
          color: Colors.amber
        
        )
      ),
     // colorScheme: ColorScheme.fromSeed(seedColor:  Colors.black),
    /*   primaryColor: Colors.red, colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.amber,
       
      ),
    iconTheme:const IconThemeData(color: Colors.red,size: 40), */
  textButtonTheme:TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.red
    )
  )
    ),
      home: Scaffold(
        
        appBar: AppBar(
            title: const Text('theme'),
            centerTitle: true,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  indicatorColor:Colors.teal,
                  tabs: [
                  Tab(child: Icon(Icons.earbuds)),
                  Tab(child: Icon(Icons.access_alarms_sharp)),
                  Tab(child: Icon(Icons.access_alarms_sharp)),
                  Tab(child: Icon(Icons.earbuds)),
                ]),
              ),
            )),
        body: Container(
          alignment: Alignment.center,
         child: Column(
           children:  [
             Container(
               height: 200,
               width: 100,
          
             ),
            const Text('data of Text one '),
            const Text('data of Text one '),
              ElevatedButton(onPressed: (){}, child:const Text('E_Button')),
              OutlinedButton(onPressed: (){}, child: const Text('E_Button')),
              const Icon(Icons.add),
              IconButton(onPressed: (){}, icon: const Icon(Icons.mail,color:  Colors.amber,),),
              TextButton(onPressed: (){}, child: const Text('T_Button')),

            
             
           ],
), 
            ),
          floatingActionButton  : FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),)
        ),
     
    );
  }
}
