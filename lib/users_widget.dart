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
      var list = jsonDecode(response.body) as List<dynamic>;
      return Users(list);
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
      body: FutureBuilder<Users>(
        future: users,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data?.users?.length,
                itemBuilder: (context, i){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, color: Colors.white,)
                    ),
                    title: Text(snapshot.data!.users?[i].name??''),
                    subtitle: Text(snapshot.data!.users?[i].company?.name??''),
                    trailing: Icon(Icons.more_vert),
                  );
                }
            );
          }else if(snapshot.hasError){
            return Text('${snapshot.error}');
          }
           return CircularProgressIndicator();
        }
      ),
    );
  }
}
