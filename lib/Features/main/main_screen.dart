import 'package:rafeeq/Features/details/presentation/screens/guides_screen.dart';
import 'package:rafeeq/Features/home/presentation/screens/home_screen.dart';
import 'package:rafeeq/Features/profile/presentation/screens/profile_screen.dart';
import 'package:rafeeq/Features/favorite/presentation/screens/favorite_screen.dart';
import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/widgets/custom__svg__picture.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const GuidesScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .08),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, AppIcons.home, "Home"),
              _buildNavItem(1, AppIcons.dogH, "Guides"),
              _buildNavItem(2, AppIcons.favorite, "Saved"),
              _buildNavItem(3, AppIcons.profile, "Profile"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String iconPath, String label) {
    final bool isSelected = currentIndex == index;
    return GestureDetector(
      onTap: () => setState(() => currentIndex = index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryColor.withValues(alpha: .1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            CustomSvgPicture(
              path: iconPath,
              color: isSelected ? AppColors.primaryColor : AppColors.gray,
              width: 22,
              height: 22,
            ),
            if (isSelected) ...[
              const Gap(8),
              Text(
                label,
                style: TextStyles.fs14.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
