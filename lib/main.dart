import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _secureText = true;
  TextEditingController _namehere =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _namehere,
                  decoration: InputDecoration(

                    labelText: "Name",
                    labelStyle: TextStyle(fontSize: 18.0,color: Colors.black),
                    hintText: "Your name",
                    suffixIcon: Icon(Icons.people),
                    border: UnderlineInputBorder(),
                    // fillColor: Colors.teal,
                    // filled: true,
                  ),
                  keyboardType: TextInputType.text,
                  maxLength: 20,
                  obscureText: false,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Phone Num",
                    labelStyle: TextStyle(fontSize: 18.0,color: Colors.black),
                    hintText: "your number",
                    suffixIcon: Icon(Icons.group),
                    border: OutlineInputBorder(),
                    // fillColor: Colors.teal,
                    // filled: true,
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 20,
                  obscureText: false,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Nid Num",
                    labelStyle: TextStyle(fontSize: 18.0,color: Colors.black),
                    hintText: "Your nid num",
                    suffixIcon: Icon(Icons.add_box_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // fillColor: Colors.teal,
                    // filled: true,
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 20,
                  obscureText: false,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 18.0,color: Colors.black),
                    hintText: "Your password",
                    suffixIcon: IconButton(
                      icon:Icon(_secureText ?Icons.remove_red_eye: Icons.ten_k),
                      onPressed: (){
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },),
                    border: OutlineInputBorder(),
                    // fillColor: Colors.teal,
                    // filled: true,
                  ),
                  keyboardType: TextInputType.text,
                  maxLength: 20,
                  obscureText: _secureText,
                ),
                OutlinedButton(
                    onPressed: (){
                      print("Your Name" + _namehere.text );
                    },
                    child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}