import 'package:ecomapp/feature/authentication/screens/login/widgets/googleandfacebooklogin.dart';
import 'package:ecomapp/feature/authentication/screens/signup/verifyemail.dart';
import 'package:ecomapp/utils/device/deviceutility.dart';
import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: TDeviceUtils.getAppBarHeight() - 30,
              // ),

              // Signup welcome note
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: 30,
              ),

              // form starts here
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // First name
                          Expanded(
                            child: TextFormField(
                              expands: false,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Iconsax.profile_2user,
                                ),
                                labelText: 'First Name',
                              ),
                            ),
                          ),

                          const SizedBox(
                            width: 5.0,
                          ),

                          // Last name
                          Expanded(
                            child: TextFormField(
                              expands: false,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Iconsax.profile_2user,
                                ),
                                labelText: 'Last Name',
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),

                      // Username
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.profile_2user,
                          ),
                          labelText: 'User Name',
                        ),
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),

                      // Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.send,
                          ),
                          labelText: 'Email Address',
                        ),
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),

                      // Phone number
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.call,
                          ),
                          labelText: 'Phone Number',
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
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),

                      // Privacy policy section
                      Row(
                        children: [
                          const Checkbox(
                            value: true,
                            onChanged: null,
                          ),
                          const Text(
                            'I agree to the',
                          ),
                          const TextButton(
                            onPressed: null,
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const Text(
                            'and',
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Terms of use',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),

                      //Submit button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const VeryfyEmailPrompt();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            'Create Account',
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),

                      // Divider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Divider(
                              indent: 60,
                              endIndent: 5,
                              thickness: 3,
                              color: Colors.grey[300],
                            ),
                          ),
                          Text(
                            'Or Sign In With',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Flexible(
                            child: Divider(
                              indent: 5,
                              endIndent: 60,
                              thickness: 3,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),

                      // Goolge and facebok access points
                      const Googleandfacebooklogin(),

                      const SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
