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
        color: Colors.purple,
        child: Center(
          child: Text("HOLA", style: TextStyle(fontSize: 80, color: Colors.white30),),
        ),
      ),
    );
  }
}
