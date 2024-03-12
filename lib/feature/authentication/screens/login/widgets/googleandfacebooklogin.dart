import 'package:flutter/material.dart';

class Googleandfacebooklogin extends StatelessWidget {
  const Googleandfacebooklogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(
                "assets/logos/google.png",
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(
                "assets/logos/facebook.png",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
