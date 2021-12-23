import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_json/feature/constants/Colors/colors_constants.dart';
import 'package:news_json/feature/constants/Strings/string_constants.dart';
import 'package:news_json/feature/constants/paddings/padding_constants.dart';

import 'package:news_json/feature/viewmodel/news_view_model.dart';
import 'package:news_json/feature/widget/news_card.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final NewsViewModel _viewModel = NewsViewModel();
  final StringConstants _stringConstants = StringConstants();
  final ColorConstants _colorConstants = ColorConstants();
  final PaddingConstants _paddingConstants = PaddingConstants();
  String country = "Turkey";

  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context, country);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _colorConstants.homeAppBar,
        actions: [buildObserverAppBar(), buildPopMenuButton()],
        title: Text(
          _stringConstants.homeAppBarTitle,
          style: Theme.of(context).textTheme.overline,
          textAlign: TextAlign.left,
        ),
      ),
      body: buildObserverBody(),
    );
  }

  Observer buildObserverAppBar() {
    return Observer(builder: (_) {
      return Visibility(
        visible: _viewModel.pageLifes == LifeState.LOADING,
        child: Padding(
          padding: _paddingConstants.x8Padding,
          child: CircularProgressIndicator(
            color: _colorConstants.whiteColor,
            strokeWidth: 4.0,
          ),
        ),
      );
    });
  }

  Observer buildObserverBody() {
    debugPrint(_viewModel.items.length.toString());

    return Observer(builder: (_) {
      return ListView.builder(
          itemCount: _viewModel.items.length,
          itemBuilder: (context, index) {
            return NewsCard(newsModel: _viewModel.items[index]);
          });
    });
  }

  PopupMenuButton<dynamic> buildPopMenuButton() {
    return PopupMenuButton(
        itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Text(_stringConstants.countryTurkey),
                onTap: () {
                  _viewModel.setContext(context, "Turkey");
                },
              ),
              PopupMenuItem(
                  child: Text(_stringConstants.countryAmerica),
                  onTap: () {
                    _viewModel.setContext(context, "America");
                  }),
              PopupMenuItem(
                  child: Text(_stringConstants.countryFrance),
                  onTap: () {
                    _viewModel.setContext(context, "France");
                  })
            ],
        child: const Icon(Icons.more_vert));
  }
}
