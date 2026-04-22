import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/widgets/custom_back_button.dart';
import 'package:rafeeq/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        title: Text(
          "Edit Profile",
          style: TextStyles.fs18.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(20),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.lightGray,
                    child: Icon(
                      Icons.person_rounded,
                      size: 50,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.white, width: 2),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.edit_rounded,
                          size: 14,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(32),
            const CustomTextFormField(
              hintText: "Full Name",
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: AppColors.primaryColor,
              ),
            ),
            const Gap(16),
            const CustomTextFormField(
              hintText: "Email Address",
              prefixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.primaryColor,
              ),
            ),
            const Gap(16),
            const CustomTextFormField(
              hintText: "Phone Number",
              prefixIcon: Icon(
                Icons.phone_outlined,
                color: AppColors.primaryColor,
              ),
            ),
            const Gap(16),
            const CustomTextFormField(
              hintText: "Location",
              prefixIcon: Icon(
                Icons.location_on_outlined,
                color: AppColors.primaryColor,
              ),
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    "Save Changes",
                    style: TextStyles.fs16.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
