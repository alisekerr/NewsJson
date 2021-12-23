// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsViewModel on _NewsViewModelBase, Store {
  final _$itemsAtom = Atom(name: '_NewsViewModelBase.items');

  @override
  List<Articles> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<Articles> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$pageLifesAtom = Atom(name: '_NewsViewModelBase.pageLifes');

  @override
  LifeState get pageLifes {
    _$pageLifesAtom.reportRead();
    return super.pageLifes;
  }

  @override
  set pageLifes(LifeState value) {
    _$pageLifesAtom.reportWrite(value, super.pageLifes, () {
      super.pageLifes = value;
    });
  }

  final _$fetchNewsAsyncAction = AsyncAction('_NewsViewModelBase.fetchNews');

  @override
  Future<void> fetchNews(String country) {
    return _$fetchNewsAsyncAction.run(() => super.fetchNews(country));
  }

  @override
  String toString() {
    return '''
items: ${items},
pageLifes: ${pageLifes}
    ''';
  }
}
