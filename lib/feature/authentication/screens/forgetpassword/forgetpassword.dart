import 'package:ecomapp/feature/authentication/screens/forgetpassword/resetpassword.dart';
import 'package:ecomapp/feature/authentication/screens/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.off(
                const LoginScreen(),
              );
            },
            icon: const Icon(
              Icons.cancel,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Forgot Passwsord',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(
              height: 30,
            ),

            const Image(
              image: AssetImage(
                '/images/onboarding/slideone.png',
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // Subtitle text
            Text(
              textAlign: TextAlign.center,
              'Enter your email address here to get a rest email',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(
              height: 20,
            ),

            // Enter email text field
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.off(
                          const ResetPasswordPage(),
                        );
                      },
                      child: const Text(
                        'Continue',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
