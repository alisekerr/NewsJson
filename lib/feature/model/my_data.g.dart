// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyData _$MyDataFromJson(Map<String, dynamic> json) => MyData(
      status: json['status'] ?? "",
      totalResults: json['totalResults'] as int,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Articles.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyDataToJson(MyData instance) => <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

Articles _$ArticlesFromJson(Map<String, dynamic> json) => Articles(
      source: Source.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] ?? "",
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      url: json['url'] ?? "",
      urlToImage: json['urlToImage'] ?? "",
      publishedAt: json['publishedAt'] ?? "",
      content: json['content'] ?? "",
    );

Map<String, dynamic> _$ArticlesToJson(Articles instance) => <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
      id: json['id'] ??"",
      name: json['name'] ?? "",
    );

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
