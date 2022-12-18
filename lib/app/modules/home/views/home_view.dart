import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              controller.pageController.animateToPage(0,
                  curve: Curves.ease, duration: Duration(microseconds: 1));
            },
            child: const Text("0"),
          ),
          GestureDetector(
            onTap: () {
              controller.pageController.animateToPage(1,
                  curve: Curves.ease, duration: Duration(microseconds: 1));
            },
            child: const Text("1"),
          ),
          GestureDetector(
            onTap: () {
              controller.pageController.animateToPage(
                2,
                curve: Curves.ease,
                duration: Duration(microseconds: 1),
              );
            },
            child: const Text("2"),
          ),
          GestureDetector(
            onTap: () {
              controller.pageController.animateToPage(
                4,
                curve: Curves.ease,
                duration: Duration(microseconds: 1),
              );
            },
            child: const Text("3"),
          ),
          Container(
            height: 100,
            width: 100,
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    controller.pageController.nextPage(
                        duration: const Duration(microseconds: 1),
                        curve: Curves.bounceIn);
                  },
                  child: Text("$index"),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
