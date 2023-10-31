import 'package:demo2/travel_widget.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
   LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
       body:Container(),
      floatingActionButton: FloatingActionButton(
        onPressed:()=>{
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TravelWidget()))
        },
        child: Icon(Icons.arrow_forward_ios)
      )
    );
  }
}
