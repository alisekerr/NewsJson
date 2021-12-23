import 'package:flutter/material.dart';
import 'package:news_json/feature/constants/Colors/colors_constants.dart';
import 'package:news_json/feature/model/my_data.dart';
import 'package:news_json/feature/view/detail_view.dart';

class NewsCard extends StatefulWidget {
  final Articles newsModel;

  const NewsCard({Key? key, required this.newsModel}) : super(key: key);

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  final ColorConstants _colorConstants = ColorConstants();

  @override
  Widget build(BuildContext context) {
    double screenWith = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Card(
        color: Colors.grey[150],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 6,
        shadowColor: _colorConstants.titleTextColor.withOpacity(0.8),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  DetailView(viewModel: widget.newsModel,)));
          },
          child: ListTile(
            leading: SizedBox(
                width: screenWith * 0.4,
                height: screenHeight * 0.3,
                child: FadeInImage(
                  image: NetworkImage(widget.newsModel.urlToImage),
                  fadeInCurve: Curves.decelerate,
                  fadeOutCurve: Curves.easeInOutCubic,
                  placeholderErrorBuilder: (BuildContext context,
                      Object exception, StackTrace? stackTrace) {
                    return Image.asset("assets/images/erroricon.jpg");
                  },
                  placeholder: const AssetImage("assets/images/newsicon.jpg"),
                  imageErrorBuilder: (context, error, stackTrace) {
                    return Image.asset('assets/images/erroricon.jpg',
                        fit: BoxFit.fitWidth);
                  },
                  fit: BoxFit.fitWidth,
                )
                /* Image.network(
              widget.newsModel.urlToImage,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Image.asset("assets/images/newsicon.jpg");
              },
            )*/
                ),
            title: Text(
              widget.newsModel.title
              ,style: Theme.of(context).textTheme.button,textAlign: TextAlign.left,),
            ),
          ),
        );
  }
}
//https://images.unsplash.com/photo-1510674485131-dc88d96369b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=349&q=80