import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final PageController pageController = PageController();

  late final RxInt page = RxInt(pageController.initialPage);

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  Future<void> animateToPage(int index) => pageController.animateToPage(
        index,
        duration: 200.milliseconds,
        curve: Curves.linear,
      );
}
