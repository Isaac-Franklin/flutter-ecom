import 'package:ecomapp/feature/authentication/screens/login/widgets/googleandfacebooklogin.dart';
import 'package:ecomapp/feature/authentication/screens/login/widgets/loginform.dart';
import 'package:ecomapp/feature/authentication/screens/login/widgets/loginintrosection.dart';
import 'package:ecomapp/utils/constants/imagestrings.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helperfunctions.dart';
import 'package:ecomapp/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final viewmode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              // Logo and intro section
              Loginintrosection(viewmode: viewmode),

              const SizedBox(
                height: 32.0,
              ),

              // Form starts here
              const LoginForm(),

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
                height: 32.0,
              ),

              // Sign in with Google and Facebook
              const Googleandfacebooklogin(),

              const SizedBox(
                height: 32.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
