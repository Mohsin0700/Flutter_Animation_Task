import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedAlignPage extends StatelessWidget {
  const AnimatedAlignPage({super.key});

  @override
  Widget build(BuildContext context) {
    Rx<Alignment> alignment = Rx(Alignment.center);
    double screenHeight = MediaQuery.of(context).size.height;
    double screedWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Align Page")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(),
          Container(
              padding: const EdgeInsets.all(8),
              height: screenHeight / 3,
              width: screedWidth / 1.5,
              color: Colors.deepPurple.shade200,
              child: Obx(
                () => AnimatedAlign(
                  alignment: alignment.value,
                  duration: const Duration(milliseconds: 500),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Container(
                      height: 30,
                      width: 30,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.topRight;
                  },
                  child: const Text("Top Right")),
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.topCenter;
                  },
                  child: const Text("Top Center")),
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.topLeft;
                  },
                  child: const Text("Top Left")),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.bottomRight;
                  },
                  child: const Text("Bottom R")),
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.bottomCenter;
                  },
                  child: const Text("Bottom C")),
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.bottomLeft;
                  },
                  child: const Text("Bottom L")),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.centerRight;
                  },
                  child: const Text("Right Center")),
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.center;
                  },
                  child: const Text("Center")),
              ElevatedButton(
                  onPressed: () {
                    alignment.value = Alignment.centerLeft;
                  },
                  child: const Text("Left Center")),
            ],
          ),
        ],
      ),
    );
  }
}
