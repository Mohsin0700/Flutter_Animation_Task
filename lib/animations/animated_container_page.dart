import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedContainerPage extends StatelessWidget {
  const AnimatedContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxDouble size = 300.0.obs;
    Rx<Color> color = Colors.white.obs;
    RxDouble rad = 0.0.obs;
    RxDouble bd = 0.0.obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Obx(() => AnimatedContainer(
                width: size.value,
                height: size.value,
                decoration: BoxDecoration(
                  color: color.value,
                  borderRadius: BorderRadius.circular(rad.value),
                  border: Border.all(width: bd.value),
                ),
                duration: const Duration(milliseconds: 300),
              )),
          const SizedBox(height: 50),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (size.value == 200) {
                      size.value = 300;
                    } else {
                      size.value = 200;
                    }
                  },
                  child: const Text("Size")),
              ElevatedButton(
                  onPressed: () {
                    if (color.value == Colors.white) {
                      color.value = Colors.lightBlueAccent;
                    } else {
                      color.value = Colors.white;
                    }
                  },
                  child: const Text("Color")),
              ElevatedButton(
                  onPressed: () {
                    if (rad.value == 0) {
                      rad.value = 90;
                    } else {
                      rad.value = 0;
                    }
                  },
                  child: const Text("Radius")),
              ElevatedButton(
                  onPressed: () {
                    if (bd.value == 0) {
                      bd.value = 10;
                    } else {
                      bd.value = 0.0;
                    }
                  },
                  child: const Text("Border")),
            ],
          )
        ],
      ),
    );
  }
}
