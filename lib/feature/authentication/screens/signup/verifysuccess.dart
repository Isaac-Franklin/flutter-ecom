import 'package:flutter/material.dart';

class EmailVerifySuccess extends StatelessWidget {
  const EmailVerifySuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),

            // Image
            const Image(
              image: AssetImage(
                'assets/images/onboarding/slidethree.png',
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Success text
            Text(
              'Your account is successfully created',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(
              height: 20,
            ),

            // Subtitle
            const Text(
              'Welcome to your ultimate shopping destination: Your accout is created, Unleash the joy of seamless online shopping',
            ),

            const SizedBox(
              height: 20,
            ),

            // Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Continue',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
