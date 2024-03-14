import 'package:ecomapp/utils/device/deviceutility.dart';
import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    this.searchTitle = 'Search in store',
    this.searchBorder = Colors.white,
    this.onTap,
  });

  final String searchTitle;
  final Color searchBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // get dark mode status
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: dark ? Colors.black.withOpacity(0.4) : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: searchBorder),
          ),
          child: Row(
            children: [
              const Icon(Icons.search),
              const SizedBox(
                width: 20,
              ),

              // Search text
              Text(
                searchTitle,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
