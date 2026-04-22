import 'package:rafeeq/core/routes/routes.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/utils/navigations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyles.fs20.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigations.pushTo(context, AppRouter.settingsScreen);
            },
            icon: const Icon(Icons.settings_outlined, color: AppColors.dark),
          ),
          const Gap(10),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Gap(20),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.lightGray,
                child: Icon(
                  Icons.person_rounded,
                  size: 60,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const Gap(16),
            Text(
              "`Bola",
              style: TextStyles.fs20.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Bola.doe@example.com",
              style: TextStyles.fs14.copyWith(color: AppColors.gray),
            ),
            const Gap(32),
            _ProfileMenuItem(
              icon: Icons.person_outline_rounded,
              title: "Edit Profile",
              onTap: () {
                Navigations.pushTo(context, AppRouter.editProfileScreen);
              },
            ),
            const _ProfileMenuItem(
              icon: Icons.history_rounded,
              title: "My Reading History",
            ),
            const _ProfileMenuItem(
              icon: Icons.notifications_none_rounded,
              title: "Notifications",
            ),
            const _ProfileMenuItem(
              icon: Icons.help_outline_rounded,
              title: "Help & Support",
            ),
            const _ProfileMenuItem(
              icon: Icons.logout_rounded,
              title: "Logout",
              isDestructive: true,
            ),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}

class _ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isDestructive;
  final VoidCallback? onTap;
  const _ProfileMenuItem({
    required this.icon,
    required this.title,
    this.isDestructive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: AppColors.lightGray.withValues(alpha: .5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: isDestructive
                    ? AppColors.redColor
                    : AppColors.primaryColor,
              ),
              const Gap(16),
              Text(
                title,
                style: TextStyles.fs16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isDestructive ? AppColors.redColor : AppColors.dark,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: isDestructive ? AppColors.redColor : AppColors.gray,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
