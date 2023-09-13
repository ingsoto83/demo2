import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Demo2 App"),
        backgroundColor: Colors.indigo,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          setState(() {

          });
          print(count);
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "Presionaste el boton ${count} veces!!!",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
