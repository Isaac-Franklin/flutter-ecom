import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';

class TProductCategoryTabs extends StatelessWidget {
  const TProductCategoryTabs({
    super.key,
    required this.title,
    required this.image,
    this.backgroundcolor = Colors.white,
    this.onTap,
  });

  final String title;
  final String image;
  final Color? backgroundcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color:
                    darkMode ? Colors.black.withOpacity(0.4) : backgroundcolor,
              ),
              child: Image(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                textAlign: TextAlign.center,
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
