import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ui_1/components/image_icon_button_widget.dart';
import 'package:test_ui_1/resources/resources.dart';
import 'package:test_ui_1/src/features/charts/bloc/charts_bloc.dart';
import 'package:test_ui_1/src/features/charts/view/widgets/first_section_widget.dart';
import 'package:test_ui_1/src/features/charts/view/widgets/fourth_section_widget.dart';
import 'package:test_ui_1/src/features/charts/view/widgets/second_section_widget.dart';
import 'package:test_ui_1/src/features/charts/view/widgets/third_section_widget.dart';
import 'package:test_ui_1/src/features/trade/trade_view.dart';
import 'package:test_ui_1/themes/app_colors.dart';
import 'package:test_ui_1/themes/app_text_styles.dart';
import 'package:test_ui_1/themes/device_screen_size.dart';

class ChartsView extends StatefulWidget {
  const ChartsView({
    super.key,
  });

  @override
  State<ChartsView> createState() => _ChartsViewState();
}

class _ChartsViewState extends State<ChartsView> {
  int _currentPage = 0;
  PageController controller = PageController();

  void current() {
    if (_currentPage == 0) {
      _currentPage += 1;
    } else if (_currentPage == 1) {
      _currentPage -= 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChartsBloc(),
      child: Scaffold(
        backgroundColor: AppColors.primaryBackground,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.width(5, context),
          ),
          child: SafeArea(
            child: PageView(
              controller: controller,
              children: [
                CustomScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  slivers: [
                    SliverAppBar(
                      centerTitle: false,
                      pinned: true,
                      backgroundColor: AppColors.primaryBackground,
                      surfaceTintColor: AppColors.primaryBackground,
                      titleSpacing: 0,
                      bottom: PreferredSize(
                        preferredSize: Size(0, 30),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              AppIcons.iconMenuFirstCopy),
                                          SizedBox(height: 5),
                                          Image.asset(AppIcons.iconMenuSecond),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'BTC/USDT',
                                    style: AppTextStyles.fs20fw600,
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 64,
                                    height: 24,
                                    padding: EdgeInsets.only(
                                      left: 7.5,
                                      right: 7.5,
                                      top: 3,
                                      bottom: 1,
                                    ),
                                    decoration: AppColorsGradient.greenColor,
                                    child: Text(
                                      '+2.38%',
                                      style: AppTextStyles.fs14green,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ImageIconButtonWidget(
                                      icon: AppIcons.iconSvechi),
                                  SizedBox(width: 20),
                                  ImageIconButtonWidget(
                                      icon: AppIcons.iconDots),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      title: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: AppColors.stepper,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Material(
                                color: _currentPage == 0
                                    ? AppColors.greyBox
                                    : AppColors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                child: InkWell(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  onTap: () {
                                    _currentPage == 0 ? null : current;
                                    _currentPage == 0
                                        ? null
                                        : controller.jumpToPage(0);
                                  },
                                  child: Container(
                                    height: 30,
                                    // width: width,
                                    decoration: BoxDecoration(
                                      color: AppColors.transparent,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),
                                      border: Border.all(
                                          color: AppColors.primaryBackground),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Charts',
                                        style: AppTextStyles.fs14fw700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Material(
                                color: _currentPage == 1
                                    ? AppColors.greyBox
                                    : AppColors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                child: InkWell(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  onTap: () {
                                    _currentPage == 1 ? null : current;
                                    _currentPage == 1
                                        ? null
                                        : controller.jumpToPage(1);
                                  },
                                  child: Container(
                                    height: 30,
                                    // width: width,
                                    decoration: BoxDecoration(
                                      color: AppColors.transparent,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),
                                      border: Border.all(
                                          color: AppColors.primaryBackground),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Trade',
                                        style: AppTextStyles.fs14fw700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          FirstSectionWidget(),
                          SecondSectionWidget(),
                          SizedBox(height: 27),
                          ThirdSectionWidget(),
                          SizedBox(height: 10),
                          Divider(),
                          BlocBuilder<ChartsBloc, ChartsState>(
                            builder: (_, state) {
                              return state.status.isShow
                                  ? FourthSectionWidget()
                                  : SizedBox.shrink();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                TradeView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
