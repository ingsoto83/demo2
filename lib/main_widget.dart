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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Presionaste el boton ${count} veces!!!",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Presionaste el boton ${count} veces!!!",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  "Presionaste el boton ${count} veces!!!",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,)
            ],
          ),
          Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.purple,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
