import 'package:rafeeq/core/constants/app_icons.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String description;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnBoardingModel> pages = [
  OnBoardingModel(
    image: AppIcons.onboarding1,
    title: "Welcome to rafeeq",
    description:
        "Your ultimate guide to understanding and caring for your pets in the best way possible.",
  ),
  OnBoardingModel(
    image: AppIcons.onboarding2,
    title: "Pet Encyclopedia",
    description:
        "Learn about different species, their average lifespan, and special dietary needs.",
  ),
  OnBoardingModel(
    image: AppIcons.onboarding3,
    title: "Expert Care Tips",
    description:
        "Discover how to raise your pets properly, what to feed them, and how to keep them happy.",
  ),
];
