import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets.dart';
import 'package:news_app/core/utils/styles.dart';

class SourseDatails extends StatelessWidget {
  const SourseDatails(
      {super.key, required this.imagUrl, required this.sourseText, required this.isFromSearch });
  final String? imagUrl;
  final String sourseText;
  final bool isFromSearch ;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 15,
        width: 15,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: isFromSearch
            ? Image.asset(
                AssetsData.logo,
                fit: BoxFit.cover,
              )
            : CachedNetworkImage(
                imageUrl: imagUrl!,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        sourseText,
        style: Styles.textStyleBold12,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    ]);
  }
}
