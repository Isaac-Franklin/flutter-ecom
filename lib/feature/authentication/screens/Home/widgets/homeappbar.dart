import 'package:ecomapp/common/appbar/appbar.dart';
import 'package:ecomapp/common/products/cart/cartmenuicon.dart';
import 'package:flutter/material.dart';

class HomeSreenAppBar extends StatelessWidget {
  const HomeSreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'A Good Day To Shop',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .apply(color: const Color.fromARGB(255, 228, 228, 228)),
          ),
          Text(
            'ProWebsiteDevs',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(color: Colors.white),
          ),
        ],
      ),

      // Actions
      actions: [
        TCartCounterWidget(
          iconColor: Colors.black.withOpacity(0.5),
          onPressed: () {},
        ),
      ],
    );
  }
}
