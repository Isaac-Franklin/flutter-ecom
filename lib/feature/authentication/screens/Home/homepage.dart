import 'package:ecomapp/feature/authentication/screens/Home/widgets/homeappbar.dart';
import 'package:ecomapp/feature/authentication/screens/Home/widgets/primaryheaderwidget.dart';
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
                HomeSreenAppBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
