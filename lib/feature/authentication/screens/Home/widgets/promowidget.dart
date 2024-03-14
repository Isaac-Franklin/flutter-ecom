import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomapp/common/widgets/sampleproductimages.dart';
import 'package:ecomapp/feature/authentication/screens/Home/widgets/circularcontainer.dart';
import 'package:ecomapp/feature/shop/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoCarousel extends StatelessWidget {
  const TPromoCarousel({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 0.9,
              autoPlay: true,
              // onScrolled: controller.updatePageIndicator();
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((e) => TSampleProductImages(imageURL: e)).toList(),
        ),
        const SizedBox(
          height: 20,
        ),

        // Dots start here
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircleContainer(
                    width: 15,
                    height: 4,
                    backgroundColor: controller.carouselCurrenIndex.value == i
                        ? Colors.grey
                        : Colors.grey.withOpacity(0.3),
                    margin: const EdgeInsets.only(right: 10),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
