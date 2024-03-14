import 'package:ecomapp/common/icons/hearticon.dart';
import 'package:ecomapp/common/widgets/roundedcontainer.dart';
import 'package:ecomapp/common/widgets/roundedimage.dart';
import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:ecomapp/utils/theme/shadow.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 150,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadow.verticalProductShadow],
        borderRadius: BorderRadius.circular(10),
        color: dark ? Colors.black.withOpacity(0.2) : Colors.white,
      ),

      // Child section starts here
      child: Column(
        // Thumbnail, wishlist button, discount tag
        children: [
          TRoundContainer(
            height: 120,
            width: 150,
            backgroundColor: dark
                ? Colors.black.withOpacity(0.3)
                : Colors.grey.withOpacity(0.4),

            // child
            child: Stack(
              children: [
                // Thumbnail image
                const TRoundImage(
                  imageURL: 'images/products/product1.PNG',
                  applyImageRadius: true,
                  padding: EdgeInsets.only(top: 40),
                ),

                // Sale tag
                Positioned(
                  top: 5,
                  left: 5,
                  child: TRoundContainer(
                    radius: 2,
                    backgroundColor: Colors.orange.withOpacity(0.3),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 2,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(
                            color: Colors.black,
                          ),
                    ),
                  ),
                ),

                // Favourite Icon button
                Positioned(
                  top: 2,
                  right: 2,
                  child: THeartIcon(
                      icon: Icons.favorite,
                      color: Colors.black.withOpacity(0.3),
                      iconColor: Colors.redAccent),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          // Product details
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      textAlign: TextAlign.left,
                      'ITSA DHMS Platform',
                      style: Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 5,
                ),

                // Row
                Row(children: [
                  Text(
                    'Nike',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.,
                    size: 10,
                  )
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
