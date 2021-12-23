import 'package:dio/dio.dart';
import 'package:news_json/feature/model/my_data.dart';

abstract class INewsService {
  final Dio dio;

  INewsService(this.dio);

  Future<List<Articles>> fetchAllNews(String country);
}
