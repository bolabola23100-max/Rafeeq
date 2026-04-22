import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/widgets/custom__svg__picture.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? AppColors.primaryColor
                          : AppColors.lightGray,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: CustomSvgPicture(
                        path: AppIcons.dog,
                        color: index == currentIndex
                            ? AppColors.white
                            : AppColors.primaryColor,
                        width: 32,
                        height: 32,
                      ),
                    ),
                  ),
                ),
                const Gap(8),
                Text(
                  "Dogs",
                  style: TextStyles.fs14.copyWith(
                    fontWeight: index == currentIndex
                        ? FontWeight.bold
                        : FontWeight.w500,
                    color: index == currentIndex
                        ? AppColors.primaryColor
                        : AppColors.gray,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
