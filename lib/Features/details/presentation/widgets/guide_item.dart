import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/routes/routes.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/utils/navigations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GuideItem extends StatelessWidget {
  const GuideItem();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigations.pushTo(context, AppRouter.guideDetailsScreen);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                AppIcons.onboarding1,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How to train your puppy",
                    style: TextStyles.fs16.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.dark,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(4),
                  Text(
                    "Basic steps for beginners...",
                    style: TextStyles.fs14.copyWith(color: AppColors.gray),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(8),
                  Row(
                    children: [
                      Icon(
                        Icons.timer_outlined,
                        size: 14,
                        color: AppColors.primaryColor,
                      ),
                      const Gap(4),
                      Text(
                        "2 min read",
                        style: TextStyles.fs14.copyWith(color: AppColors.gray),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: AppColors.gray,
            ),
          ],
        ),
      ),
    );
  }
}
