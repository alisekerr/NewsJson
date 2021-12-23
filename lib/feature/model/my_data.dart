import 'package:json_annotation/json_annotation.dart';
part 'my_data.g.dart';

@JsonSerializable()
class MyData {
  String status;
  int totalResults;
  List<Articles> articles;

  MyData(
      {required this.status,
      required this.totalResults,
      required this.articles});

  factory MyData.fromJson(Map<String, dynamic> json) => _$MyDataFromJson(json);
  Map<String, dynamic> toJson() => _$MyDataToJson(this);
}

@JsonSerializable()
class Articles {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Articles(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);
  Map<String, dynamic> toJson() => _$ArticlesToJson(this);
}

@JsonSerializable()
class Source {
  String id;
  String name;

  Source({required this.id, required this.name});

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}

/*  factory MyData.fromJson(Map<String, dynamic> json) => _$MyDataFromJson(json);
  Map<String, dynamic> toJson() => _$MyDataToJson(this); */