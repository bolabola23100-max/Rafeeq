import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Favorite",
            style: TextStyles.fs20.copyWith(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        physics: const BouncingScrollPhysics(),
        itemCount: 13,
        itemBuilder: (context, index) {
          return const _FavoriteItem();
        },
      ),
    );
  }
}

class _FavoriteItem extends StatelessWidget {
  const _FavoriteItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .4),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              AppIcons.onboarding1,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),

          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "dog nutrition guide",
                  style: TextStyles.fs16.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.dark,
                  ),
                ),
                const Gap(4),
                Text(
                  "What to feed your dog...",
                  style: TextStyles.fs14.copyWith(color: AppColors.gray),
                ),
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dogs",
                      style: TextStyles.fs14.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Added 2 days ago",
                      style: TextStyles.fs14.copyWith(color: AppColors.gray),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
