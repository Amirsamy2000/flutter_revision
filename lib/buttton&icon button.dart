
import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  buttoncliclk(msg){
    print('click by iconbtton $msg');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        buttonTheme:  const ButtonThemeData(
       splashColor: Colors.black38,
       buttonColor: Colors.amber

        )
      /* elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
           fixedSize:Size.fromWidth(100),
          primary: Colors.amber,
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(width: 5)

          )
        ),
     
      ), */
     /*  outlinedButtonTheme: OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
           fixedSize:Size.fromWidth(100),
          primary: Colors.amber,
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(width: 5)

          )
        ), ) */
      
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Amir samy'),
        
        ),
       
        body: Container(
        
          child: Row(
            children: [
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('A'),
                 /*  style:OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
                        side: BorderSide(width: 3,color: Colors.orange))

                      ) */
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('B'),
                      style:OutlinedButton.styleFrom(
                        
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
                        side: const BorderSide(width: 19,color: Colors.orange))

                      )
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('C'),
                     style:  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      //backgroundColor: Colors.red,
                      color: Colors.amber,
  
                    ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    overlayColor:MaterialStateProperty.all(Colors.redAccent),
                    shadowColor: MaterialStateProperty.all(Colors.green),
                    elevation: MaterialStateProperty.all(10)
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    autofocus: true,
                    label: const Text('A_1'),
                    icon: const Icon(Icons.add),
                    style:  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      //backgroundColor: Colors.red,
                      color: Colors.amber,
  
                    ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    overlayColor:MaterialStateProperty.all(Colors.redAccent),
                    shadowColor: MaterialStateProperty.all(Colors.green),
                    elevation: MaterialStateProperty.all(10),
                    fixedSize: MaterialStateProperty.all(const Size.fromWidth(50)),
                    ),
                  ),
                  OutlinedButton.icon(
                      onPressed: () {},
                      label: const Text('B_1'),
                      icon: const Icon(Icons.add),
                      style:  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 26, 223, 203)),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      //backgroundColor: Colors.red,
                      color: Color.fromARGB(255, 94, 7, 255),
                      
                      
                      
                      
   
                    ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    overlayColor:MaterialStateProperty.all(Colors.redAccent),
                    shadowColor: MaterialStateProperty.all(Colors.green),
                    elevation: MaterialStateProperty.all(10),
                    padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(5, 15, 5, 0)),
                    fixedSize:MaterialStateProperty.all(const Size.square(150)), 
                    ),
                      ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('C_1'),
                      icon: const Icon(Icons.add),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black12),
                        fixedSize: MaterialStateProperty.all(const Size(200,100)),
                      /*   side: MaterialStateProperty.all(BorderSide(
                          color: Colors.black12,
                          width: 6,
                          style: BorderStyle.solid
                        )), */
                       // backgroundColor: MaterialStateProperty.all(Colors.brown),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(width: 3,
                          color: Colors.amber 
                          )
                        ))
                      ),
                      ),
                  IconButton(onPressed:()=> buttoncliclk('hrello')  , icon: const Icon(Icons.add),
                  iconSize: 50,
                  padding: const EdgeInsets.all(10),
                  color: Colors.red,
                  highlightColor: Colors.blue,
                  alignment: Alignment.topLeft,
                  splashRadius: 100,
                  splashColor: Colors.black,
                  tooltip: 'NOpressed',
                  disabledColor: Colors.green,
                  ),
                ElevatedButton(onPressed: (){}, child: const Text('new e')),
                OutlinedButton(onPressed: (){}, child: const Text('new o')),
               TextButton(onPressed: (){}, child: const Text('new t'))
                   
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
