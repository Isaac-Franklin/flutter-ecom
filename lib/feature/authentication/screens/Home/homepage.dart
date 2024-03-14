import 'package:ecomapp/common/products/cart/searchcontainer.dart';
import 'package:ecomapp/common/products/productcards/productcardvertical.dart';
import 'package:ecomapp/common/texts/sectionheader.dart';
import 'package:ecomapp/common/widgets/sampleproductimages.dart';
import 'package:ecomapp/feature/authentication/screens/Home/widgets/homeappbar.dart';
import 'package:ecomapp/feature/authentication/screens/Home/widgets/homecategorysection.dart';
import 'package:ecomapp/feature/authentication/screens/Home/widgets/primaryheaderwidget.dart';
import 'package:ecomapp/feature/authentication/screens/Home/widgets/promowidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainerWidget(
            child: Column(
              children: [
                // AppBar Below
                HomeSreenAppBar(),

                SizedBox(
                  height: 30,
                ),

                // SearchBar
                SearchBarWidget(),
                SizedBox(
                  height: 32,
                ),

                // Categories
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      // Header
                      SectionHeader(
                        title: 'See More',
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      // Horizotal Listview
                      Homecategorysection(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Body section starts here
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                // Carousel banner section
                TPromoCarousel(
                  banners: [
                    'images/banners/banner3.png',
                    'images/banners/banner2.png',
                    'images/banners/banner4.png',
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                // Popular products
                TProductCardVertical()
              ],
            ),
          ),

          //
        ],
      ),
    );
  }
}
