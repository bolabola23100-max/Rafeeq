import 'package:rafeeq/Features/on_boarding_screens/screens/on_boarding_model.dart';
import 'package:rafeeq/core/constants/app_icons.dart';
import 'package:rafeeq/core/routes/routes.dart';
import 'package:rafeeq/core/styles/colors.dart';
import 'package:rafeeq/core/styles/text_styles.dart';
import 'package:rafeeq/core/utils/navigations.dart';
import 'package:rafeeq/core/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          if (currentPage != pages.length - 1)
            TextButton(
              onPressed: () {
                Navigations.pushReplacement(context, AppRouter.loginScreen);
              },
              child: Text(
                "Skip",
                style: TextStyles.fs14.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          const Gap(10),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.05,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 100,
                ),
                itemBuilder: (context, index) {
                  return Image.asset(
                    AppIcons.footprint,
                    color: AppColors.primaryColor,
                  );
                },
                itemCount: 20,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemCount: pages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primaryColor.withValues(
                                    alpha: .2,
                                  ),
                                  blurRadius: 30,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: Image.asset(
                                pages[index].image,
                                height: 280,
                                width: 280,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Gap(40),
                          Text(
                            pages[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyles.fs20.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 26,
                            ),
                          ),
                          const Gap(16),
                          Text(
                            pages[index].description,
                            style: TextStyles.fs16.copyWith(
                              color: AppColors.gray,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 50),
                child: Column(
                  children: [
                    SmoothPageIndicator(
                      count: pages.length,
                      controller: controller,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: AppColors.primaryColor,
                        dotColor: AppColors.lightGray,
                        dotHeight: 8,
                        dotWidth: 8,
                        expansionFactor: 4,
                      ),
                    ),
                    const Gap(40),
                    MainButton(
                      text: currentPage == pages.length - 1
                          ? "Get Started"
                          : "Next",
                      textColor: AppColors.white,
                      onPressed: () {
                        if (currentPage == pages.length - 1) {
                          Navigations.pushReplacement(
                            context,
                            AppRouter.loginScreen,
                          );
                        } else {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      w: double.infinity,
                      h: 56,
                      borderRadius: 18,
                      buttonColor: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
