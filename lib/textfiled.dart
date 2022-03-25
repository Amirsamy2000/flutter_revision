import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFiledBuild extends StatefulWidget {
  const TextFiledBuild({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _TextFiledBuildState();
}

class _TextFiledBuildState extends State<TextFiledBuild> {
  bool visiable = false;
  showpassword() {
    setState(() {
      visiable = !visiable;
    });
  }

  showDrawe() {
    return Drawer(
      backgroundColor: Colors.red,
    );
  }
  var mycontorl = TextEditingController();

  ThemeData v = ThemeData.dark();
  ThemeData v1 = ThemeData.light();
  ThemeData? s;
  int? data;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: s,
      
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text("TextFiled"),
        ),
        body: Column(children: [
          const SizedBox(
            height: 30,
          ),
          
          TextField(
              controller: mycontorl,
              maxLength: 50,
              keyboardType: TextInputType.number,
              textCapitalization: TextCapitalization.words,
              style: const TextStyle(backgroundColor: Colors.red),
              restorationId: 'Amirsamy',
              readOnly: false,
              textAlignVertical: TextAlignVertical.bottom,
              textAlign: TextAlign.center,
              smartDashesType: SmartDashesType.enabled,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    setState(() {
                      DropdownMenuItem(child: Drawer(),);
                    });
                  },
                ),
                hintText: 'Enter year brith',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          TextField(
            textDirection: TextDirection.ltr,
            obscureText: visiable,
            keyboardType: TextInputType.visiblePassword,
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
              label: const Text("user name"),
              hintText: "Enter your name",
              counter: const Text('dataset form site kaggle for Ai mac '),
              // contentPadding:const EdgeInsets.all(10),
              fillColor: Colors.amber,
              focusColor: Colors.red,
              filled: true,
              helperText: "for helpe in flutter",

              semanticCounterText: "Amirsamy",
              prefix: const Icon(Icons.add),
              prefixIconColor: Colors.red,
              hoverColor: Colors.pink,
              icon: IconButton(
                  icon: const Icon(Icons.add), onPressed: showpassword),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.pink)),
            ),
          ),
          
          Text('$data'),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  data =
                      (DateTime.now().year - num.parse(mycontorl.text)) as int?;
                });
              },
              child: Text(DateTime.now().year.toString()))
        ]),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            s == v ? s = v1 : s = v;

          });
        }),
      ),
    );
  }
}
