import 'package:ecomapp/feature/authentication/screens/signup/verifysuccess.dart';
import 'package:flutter/material.dart';

class VeryfyEmailPrompt extends StatelessWidget {
  const VeryfyEmailPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),

          // Cancel button
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.cancel,
                    ),
                  ),
                ],
              ),

              // Main image
              Container(
                padding: const EdgeInsets.all(10),
                // decoration: BoxDecoration(),
                child: const Image(
                  image: AssetImage(
                    'assets/images/onboarding/slideone.png',
                  ),
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              // Verify headline text
              Text(
                'Verify your email address',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: 16,
              ),

              // display email address entered
              Text(
                'dev@prowebsitedevelopers.com',
                style: Theme.of(context).textTheme.titleSmall,
              ),

              const SizedBox(
                height: 16,
              ),

              // subtitle sentence
              Container(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  'Congratulations! Your Account Awaits. Verify Your Email To Start Shopping And Experience a World of Unrivaled Deals and Personalized Offers.',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const EmailVerifySuccess();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Continue',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              // Resend email Button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Resend Email',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),

              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
