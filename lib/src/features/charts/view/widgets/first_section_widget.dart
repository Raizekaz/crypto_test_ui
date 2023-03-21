import 'package:flutter/material.dart';
import 'package:test_ui_1/components/amount_container_widget.dart';
import 'package:test_ui_1/resources/resources.dart';
import 'package:test_ui_1/src/features/charts/view/widgets/draggable_stepper_widget.dart';
import 'package:test_ui_1/themes/app_colors.dart';
import 'package:test_ui_1/themes/app_text_styles.dart';

class FirstSectionWidget extends StatelessWidget {
  const FirstSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _LeftSideWidget(),
        _RightSideWidget(),
      ],
    );
  }
}

class _RightSideWidget extends StatelessWidget {
  const _RightSideWidget();

  @override
  Widget build(BuildContext context) {
    final mockDataPriceOne = ['43,790', '43,788', '43,786', '43,784', '43,666'];
    final mockDataCountOne = [19500, 19200, 18500, 18300, 17900];
    final mockDataPriceTwo = [
      '43,811',
      '43,812',
      '43,714',
      '43,716',
      '43,717',
      '43,720'
    ];
    final mockDataCountTwo = [15200, 16100, 17500, 19200, 20500, 21300];

    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
              child: ListView(
                padding: EdgeInsets.zero,
                itemExtent: 17,
                children: List.generate(
                  mockDataPriceOne.length,
                  (int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.transparent,
                            AppColors.redOpacity,
                          ],
                          stops: [
                            if (mockDataCountOne[index] >= 19500) 0.35,
                            if (mockDataCountOne[index] < 19500 &&
                                mockDataCountOne[index] >= 19200)
                              0.5,
                            if (mockDataCountOne[index] < 19200 &&
                                mockDataCountOne[index] >= 18500)
                              0.6,
                            if (mockDataCountOne[index] < 18500 &&
                                mockDataCountOne[index] > 17900)
                              0.7,
                            if (mockDataCountOne[index] <= 17900) 0.8,
                            0.1,
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            mockDataPriceOne[index],
                            style: AppTextStyles.fs12fw600red,
                          ),
                          Text(
                            mockDataCountOne[index].toString(),
                            style: AppTextStyles.fs12fw700,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '43,810.58',
                  style: AppTextStyles.fs18fw600green,
                ),
                SizedBox(height: 2),
                Text(
                  '~ \$43,810.58',
                  style: AppTextStyles.fs13fw500grey,
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 120,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    itemExtent: 17,
                    children: List.generate(
                      mockDataPriceTwo.length,
                      (int index) {
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.transparent,
                                AppColors.greenOpacity,
                              ],
                              stops: [
                                if (mockDataCountTwo[index] <= 15200) 0.9,
                                if (mockDataCountTwo[index] > 15200 &&
                                    mockDataCountTwo[index] <= 16100)
                                  0.7,
                                if (mockDataCountTwo[index] > 16100 &&
                                    mockDataCountTwo[index] <= 17500)
                                  0.5,
                                if (mockDataCountTwo[index] > 17500 &&
                                    mockDataCountTwo[index] <= 19200)
                                  0.35,
                                if (mockDataCountTwo[index] > 19200 &&
                                    mockDataCountTwo[index] <= 20500)
                                  0.25,
                                if (mockDataCountTwo[index] > 20500 &&
                                    mockDataCountTwo[index] <= 21300)
                                  0.1,
                                0.1,
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                mockDataPriceTwo[index],
                                style: AppTextStyles.fs12fw600green,
                              ),
                              Text(
                                mockDataCountTwo[index].toString(),
                                style: AppTextStyles.fs12fw700,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _LeftSideWidget extends StatelessWidget {
  const _LeftSideWidget();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AmountContainerWidget(
            text: Text(
              '43,8055.35',
              style: AppTextStyles.fs16fw600,
            ),
            iconButtonOne: AppIcons.iconMinus,
            iconButtonTwo: AppIcons.iconPlus,
          ),
          SizedBox(height: 15),
          AmountContainerWidget(
            text: Text(
              'Amount (BTC)',
              style: AppTextStyles.fs16fw600opacity40,
            ),
            iconButtonOne: AppIcons.iconMinus,
            iconButtonTwo: AppIcons.iconPlus,
          ),
          SizedBox(height: 20),
          DraggableStepper(),
          SizedBox(height: 20),
          AmountContainerWidget(
            text: Text(
              'Total (USDT)',
              style: AppTextStyles.fs16fw600opacity40,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Avbl',
                style: AppTextStyles.fs13fw600opacity60,
              ),
              Row(
                children: [
                  Text(
                    '1 000.00 USDT',
                    style: AppTextStyles.fs13fw600,
                  ),
                  SizedBox(width: 7),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(AppIcons.iconGreyCircle),
                      Image.asset(AppIcons.iconWhiteHorizontalVector),
                      Image.asset(AppIcons.iconWhiteVerticalVector),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
