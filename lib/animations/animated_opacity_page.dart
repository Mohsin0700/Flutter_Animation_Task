import 'package:animations/examples/animated_opacity_ex1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedOpacityPage extends StatelessWidget {
  const AnimatedOpacityPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxDouble opacity = 1.0.obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Obx(
              () => AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: opacity.value,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      opacity.value = 0;
                    },
                    child: const Text("Opacity: 0")),
                ElevatedButton(
                    onPressed: () {
                      opacity.value = 0.5;
                    },
                    child: const Text("Opacity: 0.5")),
                ElevatedButton(
                    onPressed: () {
                      opacity.value = 1;
                    },
                    child: const Text("Opacity 1")),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: ListTile(
                onTap: () {
                  Get.to(() => const AnimatedOpacityEx1());
                },
                tileColor: Colors.white,
                title: const Text("Example 1"),
                leading: const Icon(Icons.color_lens_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
