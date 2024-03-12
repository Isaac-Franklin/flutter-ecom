import 'package:ecomapp/feature/authentication/screens/Home/widgets/circularcontainer.dart';
import 'package:ecomapp/feature/authentication/screens/Home/widgets/curvededgeswidget.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainerWidget extends StatelessWidget {
  const TPrimaryHeaderContainerWidget({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TClipPathWidget(
      child: Container(
        // width: 900,
        color: Colors.blue[300],
        padding: const EdgeInsets.all(0),
        // Stack property starts here
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              // First circle shape
              const Positioned(
                top: -150,
                right: -250,
                child: TCircleContainer(),
              ),

              // second circle shape
              const Positioned(
                top: 100,
                right: -300,
                child: TCircleContainer(),
              ),

              // third circle shape
              Positioned(
                top: -300,
                left: -300,
                child: TCircleContainer(
                  backgroundColor: Colors.black.withOpacity(0.3),
                ),
              ),

              // Other child section starts here
              child
            ],
          ),
        ),
      ),
    );
  }
}
