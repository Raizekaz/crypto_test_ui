import 'package:flutter/material.dart';
import 'package:test_ui_1/themes/app_colors.dart';

class AmountContainerWidget extends StatelessWidget {
  const AmountContainerWidget({
    super.key,
    required this.text,
    this.iconButtonOne,
    this.iconButtonTwo,
    this.height = 42,
    this.width,
  });

  final Text text;
  final String? iconButtonOne;
  final String? iconButtonTwo;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: AppColorsGradient.greyColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: iconButtonOne != null,
            child: _IconButtonWidget(
              icon: iconButtonOne,
            ),
          ),
          text,
          Visibility(
            visible: iconButtonTwo != null,
            child: _IconButtonWidget(
              icon: iconButtonTwo,
            ),
          ),
        ],
      ),
    );
  }
}

class AmountButtonWidget extends StatelessWidget {
  const AmountButtonWidget({
    super.key,
    required this.text,
    this.height = 42,
    this.width,
  });

  final Text text;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.greyBox,
      borderRadius: BorderRadius.all(Radius.circular(6)),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        onTap: () {},
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(6)),
            border: Border.all(color: AppColors.primaryBackground),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text,
            ],
          ),
        ),
      ),
    );
  }
}

class _IconButtonWidget extends StatelessWidget {
  const _IconButtonWidget({
    this.icon,
  });

  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: () {},
        child: SizedBox(
          height: 40,
          width: 40,
          child: Image.asset(icon!),
        ),
      ),
    );
  }
}
