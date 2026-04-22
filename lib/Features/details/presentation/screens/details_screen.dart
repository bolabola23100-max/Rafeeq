import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.primaryColor,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 18,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.bookmark_border_rounded,
                    size: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              const Gap(10),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(AppIcons.onboarding1, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor.withValues(alpha: .1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Dogs",
                          style: TextStyles.fs14.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Gap(12),
                      Icon(
                        Icons.timer_outlined,
                        size: 16,
                        color: AppColors.gray,
                      ),
                      const Gap(4),
                      Text(
                        "8 min read",
                        style: TextStyles.fs14.copyWith(color: AppColors.gray),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Text(
                    "Ultimate Guide to Raising a Golden Retriever",
                    style: TextStyles.fs20.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const Gap(24),
                  const _DetailSection(
                    title: "General Overview",
                    content:
                        "Golden Retrievers are friendly, intelligent, and devoted. They are one of the most popular dog breeds in the world due to their gentle nature and versatility.",
                  ),
                  const Gap(24),
                  const _DetailSection(
                    title: "Lifespan",
                    content:
                        "The average lifespan of a Golden Retriever is 10 to 12 years. Proper nutrition, regular exercise, and frequent vet checkups can help them live a long and healthy life.",
                  ),
                  const Gap(24),
                  const _DetailSection(
                    title: "Dietary Needs",
                    content:
                        "A balanced diet high in protein and moderate in healthy fats is essential. Avoid feeding them chocolate, grapes, onions, and excessive fatty foods as they can be toxic.",
                  ),
                  const Gap(24),
                  const _DetailSection(
                    title: "Care Tips",
                    content:
                        "They require daily exercise to burn off energy. Grooming is also important, as they shed quite a bit. Regular brushing (at least twice a week) will keep their coat healthy and minimize shedding in your home.",
                  ),
                  const Gap(40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailSection extends StatelessWidget {
  final String title;
  final String content;
  const _DetailSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.fs18.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        const Gap(12),
        Text(
          content,
          style: TextStyles.fs16.copyWith(color: AppColors.dark, height: 1.6),
        ),
      ],
    );
  }
}
