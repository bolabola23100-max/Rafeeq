import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class GuideCategoryList extends StatefulWidget {
  const GuideCategoryList({super.key});

  @override
  State<GuideCategoryList> createState() => _GuideCategoryListState();
}

class _GuideCategoryListState extends State<GuideCategoryList> {
  int selectedIndex = 0;
  final List<String> categories = ["All", "Dogs", "Cats", "Birds", "Reptiles"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () => setState(() => selectedIndex = index),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.lightGray,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyles.fs14.copyWith(
                      color: isSelected ? AppColors.white : AppColors.gray,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
