import 'package:ecomapp/utils/device/deviceutility.dart';
import 'package:flutter/material.dart';

class TSampleProductImages extends StatelessWidget {
  const TSampleProductImages({
    super.key,
    this.width,
    this.height,
    required this.imageURL,
    this.applyImageRadius = true,
    this.border,
    this.fit = BoxFit.cover,
    this.padding = const EdgeInsets.all(8),
    this.isNetworkImage = false,
    this.onPressed,
    this.backgroundcolor = Colors.white,
    this.borderRadius = 10.0,
  });

  final double? width, height;
  final String imageURL;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundcolor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        width: TDeviceUtils.getScreenWidth(context),
        height: height,
        decoration: BoxDecoration(
          color: backgroundcolor,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageURL)
                : AssetImage(imageURL) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
