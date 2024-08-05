import 'package:equatable/equatable.dart';

import 'result.dart';

class NewsModel extends Equatable {
  final String? status;
  final int? totalResults;
  final List<Result>? results;
  final String? nextPage;

  const NewsModel({
    this.status,
    this.totalResults,
    this.results,
    this.nextPage,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        status: json['status'] as String?,
        totalResults: json['totalResults'] as int?,
        results: (json['results'] as List<dynamic>?)
            ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
            .toList(),
        nextPage: json['nextPage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'totalResults': totalResults,
        'results': results?.map((e) => e.toJson()).toList(),
        'nextPage': nextPage,
      };

  @override
  List<Object?> get props => [status, totalResults, results, nextPage];
}
