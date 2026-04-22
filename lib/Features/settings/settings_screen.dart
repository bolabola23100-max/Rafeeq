import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: Text(
          "Settings",
          style: TextStyles.fs18.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "More",
                style: TextStyles.fs16.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const _SettingsTile(
              icon: Icons.language_rounded,
              title: "Language",
              value: "English",
            ),
            const _SettingsTile(
              icon: Icons.lock_outline_rounded,
              title: "Privacy Policy",
            ),
            const _SettingsTile(
              icon: Icons.info_outline_rounded,
              title: "About Us",
            ),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? value;

  const _SettingsTile({required this.icon, required this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.lightGray.withValues(alpha: .3),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.dark, size: 22),
            const Gap(16),
            Text(
              title,
              style: TextStyles.fs16.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            if (value != null)
              Text(
                value!,
                style: TextStyles.fs14.copyWith(color: AppColors.gray),
              ),

            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
              color: AppColors.gray,
            ),
          ],
        ),
      ),
    );
  }
}
