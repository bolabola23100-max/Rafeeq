import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/widgets/custom__svg__picture.dart';
import 'package:rafeeq/core/widgets/custom_back_button.dart';
import 'package:rafeeq/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CustomBackButton(),
        elevation: 0,
        title: Text(
          "Search",
          style: TextStyles.fs18.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Gap(10),
          CustomTextFormField(
            hintText: "Search for pets, toys, etc...",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomSvgPicture(
                path: AppIcons.search,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: Column(
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 80,
                  color: AppColors.lightGray,
                ),
                const Gap(16),
                Text(
                  "Search for something...",
                  style: TextStyles.fs16.copyWith(color: AppColors.gray),
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
