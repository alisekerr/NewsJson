import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:news_json/feature/core/network/network_manager.dart';
import 'package:news_json/feature/model/my_data.dart';
import 'package:news_json/feature/services/abstracts/i_news_service.dart';
import 'package:news_json/feature/services/news_service.dart';

part 'news_view_model.g.dart';

class NewsViewModel = _NewsViewModelBase with _$NewsViewModel;

abstract class _NewsViewModelBase with Store {
  BuildContext? context;
  late INewsService newsService;

  @observable
  List<Articles> items = [];

  @observable
  LifeState pageLifes = LifeState.IDDLE;

  _NewsViewModelBase({this.context}) {
    newsService = NewsService(NetworkManager.instance.dio);
  }

  void setContext(BuildContext? context, String country) {
    this.context = context;
    fetchNews(country);
  }

  @action
  Future<void> fetchNews(String country) async {
    pageLifes = LifeState.LOADING;
    items = await newsService.fetchAllNews(country);
    
    pageLifes = LifeState.DONE;
  }
}

enum LifeState {
  IDDLE,
  LOADING,
  DONE,
}
