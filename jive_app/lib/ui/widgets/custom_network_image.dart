import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final Size? size;
  final BoxFit fit;

  const CustomNetworkImage(
      {required this.imageUrl, this.size, this.fit = BoxFit.contain, super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: size?.width,
      height: size?.height,
      placeholder: (context, url) {
        return SizedBox(
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade400,
            child: Container(
              width: size?.width,
              height: size?.height,
              color: Colors.white,
            ),
          ),
        );
      },
      errorWidget: (context, url, error) => Container(
        width: size?.width,
        height: size?.height,
        color: Colors.grey.shade200,
        child: Center(
          child: Icon(Icons.error, color: Colors.red),
        ),
      ),
    );
  }
}
