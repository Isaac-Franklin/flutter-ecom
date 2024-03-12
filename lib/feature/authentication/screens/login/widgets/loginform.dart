import 'package:ecomapp/buttonnavigationbar/navigationmenu.dart';
import 'package:ecomapp/feature/authentication/screens/forgetpassword/forgetpassword.dart';
import 'package:ecomapp/feature/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        // padding: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // EMAIL
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: 'Email',
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.password_check,
                  ),
                  labelText: 'Password',
                  suffixIcon: Icon(
                    Iconsax.eye_slash,
                  )),
            ),
            const SizedBox(
              height: 32.0,
            ),

            // Remember and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(
                      'Remember Me',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),

                // Forgot password
                TextButton(
                  onPressed: () {
                    Get.off(
                      const ForgotPassPage(),
                    );
                  },
                  child: const Text(
                    'Forgot Pasword',
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 32.0,
            ),

            //  Login and sign up buttons
            // Login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(
                    const NavigationMenu(),
                  );
                },
                child: const Text(
                  'Sign In',
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            // Signup Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignupScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'Create Account',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}
