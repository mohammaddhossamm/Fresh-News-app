import 'package:equatable/equatable.dart';

class Result extends Equatable {
  final String? articleId;
  final String? title;
  final String? link;
  final List<dynamic>? keywords;
  final List<dynamic>? creator;
  final dynamic videoUrl;
  final String? description;
  final String? content;
  final String? pubDate;
  final String? imageUrl;
  final String? sourceId;
  final int? sourcePriority;
  final String? sourceUrl;
  final String? sourceIcon;
  final String? language;
  final List<dynamic>? country;
  final List<dynamic>? category;
  final String? aiTag;
  final String? sentiment;
  final String? sentimentStats;
  final String? aiRegion;
  final String? aiOrg;

  const Result({
    this.articleId,
    this.title,
    this.link,
    this.keywords,
    this.creator,
    this.videoUrl,
    this.description,
    this.content,
    this.pubDate,
    this.imageUrl,
    this.sourceId,
    this.sourcePriority,
    this.sourceUrl,
    this.sourceIcon,
    this.language,
    this.country,
    this.category,
    this.aiTag,
    this.sentiment,
    this.sentimentStats,
    this.aiRegion,
    this.aiOrg,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        articleId: json['article_id'] as String?,
        title: json['title'] as String?,
        link: json['link'] as String?,
        keywords: json['keywords'] as List<dynamic>?,
        creator: json['creator'] as List<dynamic>?,
        videoUrl: json['video_url'] as dynamic,
        description: json['description'] as String?,
        content: json['content'] as String?,
        pubDate: json['pubDate'] as String?,
        imageUrl: json['image_url'] as String?,
        sourceId: json['source_id'] as String?,
        sourcePriority: json['source_priority'] as int?,
        sourceUrl: json['source_url'] as String?,
        sourceIcon: json['source_icon'] as String?,
        language: json['language'] as String?,
        country: json['country'] as List<dynamic>?,
        category: json['category'] as List<dynamic>?,
        aiTag: json['ai_tag'] as String?,
        sentiment: json['sentiment'] as String?,
        sentimentStats: json['sentiment_stats'] as String?,
        aiRegion: json['ai_region'] as String?,
        aiOrg: json['ai_org'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'article_id': articleId,
        'title': title,
        'link': link,
        'keywords': keywords,
        'creator': creator,
        'video_url': videoUrl,
        'description': description,
        'content': content,
        'pubDate': pubDate,
        'image_url': imageUrl,
        'source_id': sourceId,
        'source_priority': sourcePriority,
        'source_url': sourceUrl,
        'source_icon': sourceIcon,
        'language': language,
        'country': country,
        'category': category,
        'ai_tag': aiTag,
        'sentiment': sentiment,
        'sentiment_stats': sentimentStats,
        'ai_region': aiRegion,
        'ai_org': aiOrg,
      };

  @override
  List<Object?> get props {
    return [
      articleId,
      title,
      link,
      keywords,
      creator,
      videoUrl,
      description,
      content,
      pubDate,
      imageUrl,
      sourceId,
      sourcePriority,
      sourceUrl,
      sourceIcon,
      language,
      country,
      category,
      aiTag,
      sentiment,
      sentimentStats,
      aiRegion,
      aiOrg,
    ];
  }
}
