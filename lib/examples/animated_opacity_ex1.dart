import 'package:animations/shared/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedOpacityEx1 extends StatelessWidget {
  const AnimatedOpacityEx1({super.key});

  @override
  Widget build(BuildContext context) {
    RxDouble opacity = 0.0.obs;
    Future.delayed(const Duration(seconds: 1), () {
      opacity.value = 1.0;
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity Ex.#1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Obx(
                        () => AnimatedOpacity(
                          opacity: opacity.value,
                          duration: const Duration(seconds: 5),
                          child: Container(color: AppConstant.lightPrimary),
                        ),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
