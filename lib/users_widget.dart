import 'dart:convert';

import 'package:demo2/data/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersWidget extends StatefulWidget {
  const UsersWidget({super.key});

  @override
  State<UsersWidget> createState() => _UsersWidgetState();
}

class _UsersWidgetState extends State<UsersWidget> {
  late Future<Users> users;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    users = fetchUsers();
  }

  Future<Users> fetchUsers() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if(response.statusCode==200){
      //todo ok
      return Users.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    }else{
      throw Exception("Verifica tu conexión a internet!!!!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuarios"),
      ),
      body: Container(),
    );
  }
}
