import 'package:rafeeq/Features/auth/presentation/widgets/auth_background_decoration.dart';
import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/widgets/custom_text_form_field.dart';
import 'package:rafeeq/core/widgets/main_button.dart';
import 'package:rafeeq/core/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:rafeeq/core/routes/routes.dart';
import 'package:rafeeq/core/utils/navigations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AuthBackgroundDecoration(borderRadiusBottomRight: 100),
          const AuthBackgroundDecoration(
            paddingTop: 600,
            paddingLeft: 170,
            borderRadiusTopLeft: 100,
          ),

          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const Gap(8),
                    Text(
                      "Please login to continue",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const Gap(48),

                    // Email Field
                    CustomTextFormField(
                      hintText: "Email Address",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    const Gap(16),

                    // Password Field
                    PasswordTextFormField(
                      text: "Password",
                      controller: TextEditingController(),
                    ),

                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                        ),
                      ),
                    ),

                    const Gap(24),

                    // Login Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MainButton(
                        text: "LOGIN",
                        onPressed: () {
                          Navigations.pushReplacement(
                            context,
                            AppRouter.mainScreen,
                          );
                        },
                        borderRadius: 12,
                        h: 56,
                        textColor: AppColors.white,
                      ),
                    ),

                    const Gap(32),

                    // Sign Up Link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigations.pushReplacement(
                              context,
                              AppRouter.registerScreen,
                            );
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: AppColors.gray,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AppIcons.google),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AppIcons.apple),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
