import 'dart:convert';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './model/newpostapi.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<NewPostModel> postList = [];
  //receive api data
  Future<List<NewPostModel>> getPostApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode == 200){

      for(Map<String, dynamic> i in data){
        postList.add(NewPostModel.fromJson(i));
      }
      return postList;
    }
    else{
      return postList;
    }
  }
  @override
  Widget build(BuildContext context) {
    print(postList.length);
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context, AsyncSnapshot snap){
              if(!snap.hasData){
               return const Center(child: CircularProgressIndicator(),);
              }
              else{
                return ListView.builder(
                  itemCount: postList.length,
                  
                  itemBuilder: (context, index){
                   return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                          Text(index.toString()),
                          SizedBox(width: 5,),
                           Expanded(child: Text(postList[index].title, style: TextStyle(color: Colors.black, fontSize: 30),)),
                         ],
                       ),
                       SizedBox(height: 10,)
                     ],
                   );
            
                });
              }
            }),
          )
        ],
      )
    );
  }
}