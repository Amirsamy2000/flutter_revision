import 'package:flutter/material.dart';
class MyApp55 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url =  'https://www.bing.com/th?id=OIP.PBwP1trM6-aYvyJkBxt9QQHaFD&w=169&h=110&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2';
double h=100,w=150;
  void _incrementCounter() {
    setState(() {
     h+=10;
     w+=10;
    });
  }
   void _DecrementCounter() {
    setState(() {
     h-=10;
     w-=10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(
            
        margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ IconButton(
            icon:const Icon(Icons.home,
          size: 40,
          color:Colors.orange ,
            ),
            onPressed: _incrementCounter,
            tooltip: 'menu ',
          
           // splashRadius:10,
         
          ),
          SizedBox(width: 20,),
          IconButton(
            icon:const Icon(Icons.home_max_outlined,
          size: 40,
          color:Colors.orange ,
            ),
            onPressed: _DecrementCounter,
            tooltip: 'menu '
          ),
          ],),
          padding:  EdgeInsets.all(7),
         height: h,
          width: w,
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
    );
  }
}
