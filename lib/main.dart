
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/buttton&icon%20button.dart';
// import 'package:flutter_application_1/colors.dart';
// import 'package:flutter_application_1/increment_widegt.dart';
import 'package:flutter_application_1/lesson_one..dart';
import 'package:flutter_application_1/themematerial.dart';

//import 'package:flutter_application_1/slivers.dart';
//import 'package:flutter_application_1/lesson_one..dart';

void main() => runApp( theme_all());

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   String url =  'https://www.bing.com/th?id=OIP.PBwP1trM6-aYvyJkBxt9QQHaFD&w=169&h=110&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2';

double h=100,w=100;
 incrementwidget(double heiget,double width){
   setState(() {
  heiget=300;
   });
  }
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home:DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Title'),
          centerTitle: true,
          leading:  IconButton(
            icon:const Icon(Icons.menu,
          
            ),
            onPressed: incrementwidget(h,w),
            tooltip: 'menu ',
          
           // splashRadius:10,
            splashColor: Colors.amber,
        highlightColor: Colors.amber,
          ),
          actions: const [
            Icon(Icons.amp_stories_rounded,    semanticLabel: 'amirsamr',
           textDirection: TextDirection.ltr,),
            Icon(Icons.earbuds),
            Icon(Icons.access_alarms_sharp),
          ],
          shadowColor: Colors.black,
          elevation: 50,
          foregroundColor: const Color.fromARGB(255, 109, 45, 19),
          shape: const Border(
            right:
                BorderSide(width: 15, color: Color.fromARGB(31, 164, 241, 235)),
            left:
                BorderSide(width: 3, color: Color.fromARGB(255, 188, 231, 245)),
          ),
        bottom:  const  TabBar(
          isScrollable: true,
          tabs: [
            Tab(  
           text: 'gooos',
            // child: Icon(Icons.access_alarms_sharp),
            ),
            Tab(child: Icon(Icons.earbuds)),
            Tab(child: Icon(Icons.access_alarms_sharp)),
            Tab(child: Icon(Icons.access_alarms_sharp)),
            Tab(child: Icon(Icons.earbuds)),
        ]),
        
         /*  bottom: PreferredSize(
            preferredSize: const Size.fromHeight(160),
            child: Flexible(
              flex: 3,
              child: Row(
                children: const  [
                
                  Icon(
                    Icons.menu,
                    size: 40,
                    color: Colors.red,
                  
                   

                  ),
                
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                 
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                 
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  // SizedBox(width: 60,),
                ],
              ),
            ),
          ), */
           
          /*  flexibleSpace: FlexibleSpaceBar(
              background:Container(
                child: Image.network(url,cacheHeight: 40,cacheWidth: 40,)
                  ),
              ), */
        ),
        body: Container(
        margin: EdgeInsets.all(h),
          alignment: Alignment.center,
          child: IconButton(
            icon:const Icon(Icons.menu,
          
            ),
            onPressed: incrementwidget(h,w),
            tooltip: 'menu ',
          
           // splashRadius:10,
            splashColor: Colors.amber,
        highlightColor: Colors.amber,
          ),
          padding:  EdgeInsets.all(7),
         height: h,
          width: 300,
decoration: BoxDecoration(
  // shape: BoxShape.circle,
  image: DecorationImage(
    image:NetworkImage(url),
    fit:BoxFit.cover
    ),
  // borderRadius: BorderRadius.circular(20),
         color: Colors.teal,
border: Border.all(
        width: 5,
        color: Colors.amber,
        
      ),
     
   boxShadow:  [
   BoxShadow(
     color: Colors.red,
     blurRadius: 80,
    // offset: Offset(40, 20)
    
   )
   ]

),

  ),
        ),
      ),
  /*             Column(
          children:  [
Flexible(
  flex: 2,
  child: Row(children: [
            Flexible(child: Container(color: Colors.amber,)),
         Flexible(child: Container(color: Colors.blue,)),
          Flexible(child: Container(color: Colors.black,),),
         ],),),
          Flexible(child: Container(color: Colors.amber,)),
         Flexible(child: Container(color: Colors.blue,)),
          Flexible(child: Container(color: Colors.black,)),
          
          ],
        ),
      ) */
    
      
    );
  }

  
}
