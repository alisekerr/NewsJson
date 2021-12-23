import 'package:dio/dio.dart';
import 'package:news_json/feature/constants/Strings/string_constants.dart';
import 'package:news_json/feature/model/my_data.dart';
import 'package:news_json/feature/services/abstracts/i_news_service.dart';
import 'package:news_json/feature/services/servicefunctions/sevice_filter.dart';

class NewsService extends INewsService {
  NewsService(Dio dio) : super(dio);
  final ServiceFilter _serviceFilter=ServiceFilter();
  StringConstants stringConstants=StringConstants();
  @override
  Future<List<Articles>> fetchAllNews(String country) async {
    final response = await dio.get(_serviceFilter.getNewsLinkByCountryName(country));
    final data = response.data;

    var dataList = data[stringConstants.newsServiceData];

    if (dataList is List) {
      return dataList.map((e) => Articles.fromJson(e)).toList();
    }
    return [];
  }

  
}
