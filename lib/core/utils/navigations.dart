import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Navigations {
  static void pushTo(BuildContext context, String route) {
    GoRouter.of(context).push(route);
  }

  static void pushReplacement(BuildContext context, String route) {
    GoRouter.of(context).pushReplacement(route);
  }

  static void popTo(BuildContext context, String route) {
    GoRouter.of(context).pop(route);
  }
}
