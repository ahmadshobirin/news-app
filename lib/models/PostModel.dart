// To parse this JSON data, do
//
//     final postModel = postModelFromMap(jsonString);

import 'dart:convert';

class PostModel {
  PostModel({
    this.id,
    this.title,
    this.desc,
    this.imageUrl,
    this.category,
  });

  String id;
  String title;
  String desc;
  String imageUrl;
  String category;

  factory PostModel.fromJson(String str) => PostModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PostModel.fromMap(Map<String, dynamic> json) => PostModel(
        id: json["id"],
        title: json["title"],
        desc: json["desc"],
        imageUrl: json["imageUrl"],
        category: json["category"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "desc": desc,
        "imageUrl": imageUrl,
        "category": category,
      };
}
