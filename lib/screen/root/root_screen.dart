import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tea_time/screen/main/main_screen.dart';
import 'package:tea_time/screen/chart/chart_screen.dart';
import 'package:tea_time/screen/diary/community_screen.dart';
import 'package:tea_time/screen/setting/setting_screen.dart';

import '../../viewmodel/root_viewmodel.dart';
import '../../widget/root/custom_bottom_navigation_bar.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RootViewModel viewModel = Get.put(RootViewModel());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Obx(
          () => IndexedStack(
            index: viewModel.selectedIndex,
            children: const [
              MainScreen(),
              CommunityScreen(),
              ChartScreen(),
              SettingScreen(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
