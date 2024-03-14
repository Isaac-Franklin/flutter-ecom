import 'package:ecomapp/feature/authentication/screens/Home/widgets/productcategorytabs.dart';
import 'package:flutter/material.dart';

class Homecategorysection extends StatelessWidget {
  const Homecategorysection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return const TProductCategoryTabs(
            title: 'Shoe Category',
            image: 'images/category/img1.jpg',
          );
        },
      ),
    );
  }
}
