import 'package:code_library/moduls/tabar%20&%20drawer/tabbar_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabbarDrawer extends StatelessWidget {
  final controller = Get.put(TabbarDrawerController());

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      // Custom AppBar that remains fixed
      appBar: AppBar(
        title: Text('Fixed AppBar'),
      ),
      body: Column(
        children: [
          // Conditionally show TabBar for desktop
          if (isDesktop)
            TabBar(
              onTap: controller.changePage,
              tabs: [
                Tab(text: 'Page 1'),
                Tab(text: 'Page 2'),
                Tab(text: 'Page 3'),
              ],
            ),
          // Display the selected page
          Expanded(
            child: Obx(() {
              return IndexedStack(
                index: controller.selectedPage.value,
                children: [
                  Center(child: Text('Page 1')),
                  Center(child: Text('Page 2')),
                  Center(child: Text('Page 3')),
                ],
              );
            }),
          ),
        ],
      ),
      // Conditionally show Drawer for mobile
      drawer: isDesktop
          ? null
          : Drawer(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Page 1'),
                    onTap: () {
                      controller.changePage(0);
                      Get.back();
                    },
                  ),
                  ListTile(
                    title: Text('Page 2'),
                    onTap: () {
                      controller.changePage(1);
                      Get.back();
                    },
                  ),
                  ListTile(
                    title: Text('Page 3'),
                    onTap: () {
                      controller.changePage(2);
                      Get.back();
                    },
                  ),
                ],
              ),
            ),
    );
  }
}
