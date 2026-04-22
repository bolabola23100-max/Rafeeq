import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/routes/routes.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/utils/navigations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigations.pushTo(context, AppRouter.guideDetailsScreen);
            },
            child: Container(
              width: 220,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .05),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                    child: Image.asset(
                      AppIcons.onboarding1,
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Golden Retriever Care",
                          style: TextStyles.fs16.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.dark,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Gap(6),
                        Row(
                          children: [
                            Icon(
                              Icons.history_toggle_off_rounded,
                              size: 14,
                              color: AppColors.gray,
                            ),
                            const Gap(4),
                            Text(
                              "Avg. Age: 10-12 Years",
                              style: TextStyles.fs14.copyWith(
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                        const Gap(4),
                        Row(
                          children: [
                            Icon(
                              Icons.restaurant_rounded,
                              size: 14,
                              color: AppColors.gray,
                            ),
                            const Gap(4),
                            Text(
                              "Diet: High Protein",
                              style: TextStyles.fs14.copyWith(
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                        const Gap(10),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Read Guide",
                              style: TextStyles.fs14.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
