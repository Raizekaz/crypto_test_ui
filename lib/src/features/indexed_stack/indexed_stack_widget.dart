import 'package:flutter/material.dart';
import 'package:test_ui_1/resources/resources.dart';
import 'package:test_ui_1/src/features/charts/view/charts_view.dart';
import 'package:test_ui_1/src/features/trade/trade_view.dart';
import 'package:test_ui_1/themes/app_colors.dart';

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({super.key});

  @override
  State<IndexedStackWidget> createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int _selectedTab = 2;

  void _onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 83,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedFontSize: 12,
          unselectedItemColor: AppColors.greyText,
          currentIndex: _selectedTab,
          onTap: _onSelectTab,
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryBackground,
              icon: _IconAssetWidget(
                icon: AppIcons.iconHome,
              ),
              activeIcon: _IconAssetWidget(
                icon: AppIcons.iconHome,
                color: AppColors.checkbox,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryBackground,
              icon: _IconAssetWidget(
                icon: AppIcons.iconChart,
              ),
              activeIcon: _IconAssetWidget(
                icon: AppIcons.iconChart,
                color: AppColors.checkbox,
              ),
              label: 'Markets',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryBackground,
              icon: _IconAssetWidget(
                icon: AppIcons.iconUnion,
                color: AppColors.greyText,
              ),
              activeIcon: _IconAssetWidget(
                icon: AppIcons.iconUnion,
              ),
              label: 'Trade',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.primaryBackground,
              icon: _IconAssetWidget(
                icon: AppIcons.iconWallet,
              ),
              activeIcon: _IconAssetWidget(
                icon: AppIcons.iconWallet,
                color: AppColors.checkbox,
              ),
              label: 'Assets',
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          TradeView(),
          TradeView(),
          ChartsView(),
          TradeView(),
        ],
      ),
    );
  }
}

class _IconAssetWidget extends StatelessWidget {
  const _IconAssetWidget({
    this.color,
    required this.icon,
  });

  final Color? color;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Image.asset(
        icon,
        color: color,
      ),
    );
  }
}
