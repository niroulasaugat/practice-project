// To parse this JSON data, do
//
//     final newPostModel = newPostModelFromJson(jsonString);

import 'dart:convert';

List<NewPostModel> newPostModelFromJson(String str) => List<NewPostModel>.from(json.decode(str).map((x) => NewPostModel.fromJson(x)));

String newPostModelToJson(List<NewPostModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewPostModel {
    NewPostModel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    int userId;
    int id;
    String title;
    String body;

    factory NewPostModel.fromJson(Map<String, dynamic> json) => NewPostModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
