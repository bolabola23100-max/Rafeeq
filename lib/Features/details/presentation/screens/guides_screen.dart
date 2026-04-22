import 'package:rafeeq/Features/details/presentation/widgets/guide_category_list.dart';
import 'package:rafeeq/Features/details/presentation/widgets/guide_item.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GuidesScreen extends StatelessWidget {
  const GuidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animal Guides",
          style: TextStyles.fs20.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            const GuideCategoryList(),
            const Gap(24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "All Guides",
                style: TextStyles.fs18.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const Gap(16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return const GuideItem();
              },
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
