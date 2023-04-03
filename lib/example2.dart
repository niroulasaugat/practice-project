import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './model/photos.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  List<UserModel> userList = [];

  Future<List<UserModel>> getUserInfo() async{
    userList.clear();
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body);

    if(response.statusCode == 200){
      for(Map<String, dynamic> i in data){
        userList.add(UserModel.fromJson(i));
        print(i['name']);
      }
      return userList;

    }
    else{
      return userList;
    }
  }
  @override
  Widget build(BuildContext context) {
    print(userList.length);
    // print(object)
    return Scaffold(
      body: Column(
        children: [
          Expanded(child:
           FutureBuilder(
            future: getUserInfo(),
            builder: (context, AsyncSnapshot snap){
            if(!snap.hasData){
              return Center(child: CircularProgressIndicator(),);
            }
            else{
              return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index){
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text('name: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                        //     Text(userList[index].name)
                        //   ],
                        // )
                        Reusablerow(title: 'Name', value: userList[index].name),
                        Reusablerow(title: 'Email', value: userList[index].email),
                      ],
                    ),
                  ),
                );
              });
            }
          })
          )
        ],
      ),

    );
  }
}

class Reusablerow extends StatelessWidget {
 final String title, value;

const  Reusablerow({
  required this.title,
  required this.value
 });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text(value),
        ],
      ),
    );
  }
}