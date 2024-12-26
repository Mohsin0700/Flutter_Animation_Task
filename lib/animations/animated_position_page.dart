import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedPositionPage extends StatelessWidget {
  const AnimatedPositionPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxDouble xPos = 0.0.obs;
    RxDouble yPos = 0.0.obs;
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Position Page")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 400,
              width: 400,
              child: Stack(
                children: [
                  Obx(
                    () => AnimatedPositioned(
                      duration: const Duration(seconds: 1),
                      top: yPos.value,
                      left: xPos.value,
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.deepPurple,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Obx(() => Slider(
                inactiveColor: Colors.white,
                min: 0,
                max: 270,
                value: xPos.value,
                onChanged: (value) {
                  xPos.value = value;
                  print(xPos.value);
                })),
            Obx(() => Expanded(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Slider(
                        inactiveColor: Colors.white,
                        min: 0,
                        max: 350,
                        value: yPos.value,
                        onChanged: (value) {
                          yPos.value = value;
                        }),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
