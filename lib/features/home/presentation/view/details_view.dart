import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widget/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key,
    required this.sourseImagUrl,
    required this.newsImagUrl,
    required this.sourseText,
    required this.title,
    required this.date,
    required this.content,
    required this.isFromSearch, 
    required this.url,
  });
  final String sourseImagUrl;
  final String newsImagUrl;
  final String sourseText;
  final String title;
  final String date;
  final String content;
  final String url;
  final bool isFromSearch;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsViewBody(
        sourseText: sourseText,
        title: title,
        date: date,
        content: content,
        sourseImagUrl: sourseImagUrl,
        newsImagUrl: newsImagUrl,
        isFromSearch:isFromSearch, url:url ,
      ),
    );
  }
}
