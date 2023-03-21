import 'package:flutter/material.dart';
import 'package:test_ui_1/components/decorated_box_widgets.dart';
import 'package:test_ui_1/themes/app_colors.dart';
import 'package:test_ui_1/themes/app_text_styles.dart';

class SecondSectionWidget extends StatelessWidget {
  const SecondSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 3,
          child: Material(
            color: AppColors.greenText,
            borderRadius: BorderRadius.circular(6),
            child: InkWell(
              borderRadius: BorderRadius.circular(6),
              onTap: () {},
              child: SizedBox(
                height: 42,
                child: Center(
                  child: Text(
                    'Buy BTC',
                    style: AppTextStyles.fs16fw700,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _PopupMenuWidget(),
                Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.greyBox,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DecoratedBoxFillColorWidget(
                            color: AppColors.redText,
                          ),
                          DecoratedBoxFillColorWidget(
                            color: AppColors.greenText,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DecoratedBoxFillColorWidget(
                            height: 5,
                            width: 11,
                            color: AppColors.white.withOpacity(0.1),
                          ),
                          DecoratedBoxFillColorWidget(
                            height: 5,
                            width: 11,
                            color: AppColors.white.withOpacity(0.1),
                          ),
                          DecoratedBoxFillColorWidget(
                            height: 5,
                            width: 11,
                            color: AppColors.white.withOpacity(0.1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _PopupMenuWidget extends StatelessWidget {
  const _PopupMenuWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.greyBox,
      ),
      child: PopupMenuButton(
        padding: EdgeInsets.zero,
        color: AppColors.greyBox,
        constraints: BoxConstraints(
          maxWidth: 60,
        ),
        icon: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '0.01',
              style: AppTextStyles.fs13fw600,
            ),
            Text(
              '▾',
              style: AppTextStyles.fs13fw600,
            ),
          ],
        ),
        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
          PopupMenuItem(
            onTap: () {},
            child: Text(
              '0.02',
              style: AppTextStyles.fs13fw600,
            ),
          ),
          PopupMenuItem(
            onTap: () {},
            child: Text(
              '0.03',
              style: AppTextStyles.fs13fw600,
            ),
          ),
        ],
      ),
    );
  }
}
