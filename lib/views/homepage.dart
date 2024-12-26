import 'package:animations/animations/animated_align_page.dart';
import 'package:animations/animations/animated_container_page.dart';
import 'package:animations/animations/animated_opacity_page.dart';
import 'package:animations/animations/animated_position_page.dart';
import 'package:animations/animations/progress_animation.dart';
import 'package:animations/animations/tween_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> pages = [
      {'title': 'Animated Container', 'page': const AnimatedContainerPage()},
      {'title': 'Animated Opacity', 'page': const AnimatedOpacityPage()},
      {'title': 'Animated Align Page', 'page': const AnimatedAlignPage()},
      {'title': 'Animated Position Page', 'page': const AnimatedPositionPage()},
      {'title': 'Tween Animation', 'page': const TweenAnimation()},
      {'title': 'Progress Animation', 'page': const ProgressAnimation()},
    ];
    navigateTo(Widget newPage) {
      Get.to(newPage);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 5),
                child: ListTile(
                  onTap: () {
                    navigateTo(pages[index]['page']);
                  },
                  tileColor: Colors.white,
                  title: Text(pages[index]['title']),
                  leading: const Icon(Icons.add_box),
                ),
              );
            }),
      ),
    );
  }
}
