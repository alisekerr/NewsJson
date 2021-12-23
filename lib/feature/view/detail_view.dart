import 'package:flutter/material.dart';

import 'package:news_json/feature/constants/Colors/colors_constants.dart';
import 'package:news_json/feature/constants/Strings/string_constants.dart';
import 'package:news_json/feature/constants/paddings/padding_constants.dart';
import 'package:news_json/feature/model/my_data.dart';
import 'package:news_json/feature/viewmodel/news_view_model.dart';
import 'package:news_json/feature/widget/read_button.dart';

class DetailView extends StatelessWidget {
  final Articles viewModel;
   DetailView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  
    final StringConstants _stringConstants = StringConstants();
  final ColorConstants _colorConstants = ColorConstants();
  final PaddingConstants _paddingConstants = PaddingConstants();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildNewsBody(context),
    );
  }

  Padding buildNewsBody(BuildContext context) {
    return Padding(
      padding: _paddingConstants.x16Padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(viewModel.title,style: Theme.of(context).textTheme.caption,textAlign: TextAlign.center,),
          const Divider(thickness: 2,endIndent: 10.0,indent: 10.0,),
          SizedBox(width:400,height:200 ,child:Image.network(
              viewModel.urlToImage,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Image.asset("assets/images/newsicon.jpg");
              },
            )),
          Text(viewModel.description,style: Theme.of(context).textTheme.button,textAlign: TextAlign.left,),
          ReadButton(textValue: _stringConstants.buttonText,)
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.share))],
      title: Text(viewModel.title,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.left),
      backgroundColor: _colorConstants.homeAppBar,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back)),
    );
  }
}
