import 'package:equatable/equatable.dart';

import 'article.dart';

class ExploreNewsModel extends Equatable {
  final String? status;
  final int? totalResults;
  final List<Article>? articles;

  const ExploreNewsModel({this.status, this.totalResults, this.articles});

  factory ExploreNewsModel.fromJson(Map<String, dynamic> json) {
    return ExploreNewsModel(
      status: json['status'] as String?,
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'totalResults': totalResults,
        'articles': articles?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [status, totalResults, articles];
}
