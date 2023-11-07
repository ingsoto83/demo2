import 'package:demo2/login_widget.dart';
import 'package:demo2/travel_widget.dart';
import 'package:demo2/users_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo2",
      home: UsersWidget()
    )
  );
}

