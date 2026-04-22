import 'package:rafeeq/Features/home/presentation/widgets/category_list.dart';
import 'package:rafeeq/Features/home/presentation/widgets/product_list.dart';
import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/routes/routes.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/utils/navigations.dart';
import 'package:rafeeq/core/widgets/custom__svg__picture.dart';
import 'package:rafeeq/core/widgets/custom_text_form_field.dart';
import 'package:rafeeq/core/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "rafeeq",
          style: TextStyles.fs20.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.2,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: AppColors.dark,
            ),
          ),
          const Gap(10),
          CircleAvatar(
            radius: 18,
            backgroundColor: AppColors.lightGray,
            child: Icon(
              Icons.person_outline_rounded,
              color: AppColors.primaryColor,
            ),
          ),
          const Gap(20),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Learn about Pets 🐾",
                    style: TextStyles.fs20.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.dark,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    "All That You Need to Know About Pets.",
                    style: TextStyles.fs14.copyWith(color: AppColors.gray),
                  ),
                ],
              ),
            ),
            const Gap(24),
            CustomTextFormField(
              onTap: () {
                Navigations.pushTo(context, AppRouter.searchScreen);
              },
              hintText: 'Search for animal info, diet, care...',
              readOnly: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(13.0),
                child: CustomSvgPicture(
                  path: AppIcons.search,
                  color: AppColors.primaryColor,
                  width: 18,
                  height: 18,
                ),
              ),
            ),
            const Gap(32),
            const SectionHeader(title: "Species"),
            const Gap(16),
            const CategoryList(),
            const Gap(32),
            const SectionHeader(title: "Featured Guides"),
            const Gap(16),
            const ProductList(),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}
