
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullscreenWidget extends StatelessWidget {
  const FullscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Fullscreen Widget", style: GoogleFonts.sigmar(fontSize: 22),)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/fondo2.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Container(
            height: 100,
            width: double.infinity,
            color: Colors.black54,
            child: Text("Travel App" , style: GoogleFonts.sigmar(fontSize: 40, color: Colors.white),),
          )
        ),
        /*child: Image.asset('assets/img/fondo2.jpg', fit: BoxFit.cover,),*/
      ),
    );
  }
}
