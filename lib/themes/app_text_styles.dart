import 'package:flutter/material.dart';
import 'package:test_ui_1/themes/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle fs14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    letterSpacing: -0.41,
    fontFamily: 'Gothic A1',
  );

  static final TextStyle fs20fw600 = fs14.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static final TextStyle fs14green = fs14.copyWith(
    color: AppColors.greenText,
  );

  static final TextStyle fs14fw600 = fs14.copyWith(
    fontWeight: FontWeight.w600,
  );

  static final TextStyle fs14fw700 = fs14.copyWith(
    fontWeight: FontWeight.w700,
  );

  static final TextStyle fs14fw600grey = fs14.copyWith(
    fontWeight: FontWeight.w600,
    color: Color(0xFF7D8696),
  );

  static final TextStyle fs18fw600green = fs14.copyWith(
    color: AppColors.greenText,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle fs12fw600red = fs14.copyWith(
    color: AppColors.redText,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle fs13fw700green = fs14.copyWith(
    color: AppColors.greenText,
    fontSize: 13,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle fs13fw700red = fs14.copyWith(
    color: AppColors.redText,
    fontSize: 13,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle fs12fw600green = fs14.copyWith(
    color: AppColors.greenText,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle fs12fw700 = fs14.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle fs16fw600opacity40 = fs14.copyWith(
    fontSize: 16,
    color: AppColors.white.withOpacity(0.4),
    fontWeight: FontWeight.w600,
  );

  static final TextStyle fs13fw600opacity60 = fs14.copyWith(
    fontSize: 13,
    color: AppColors.white.withOpacity(0.6),
    fontWeight: FontWeight.w600,
  );

  static final TextStyle fs13fw600 = fs14.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle fs13fw600grey = fs14.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.greyText,
  );

  static final TextStyle fs13fw500grey = fs14.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.greyText,
  );

  static final TextStyle fs16fw600 = fs14.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle fs16fw700 = fs14.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
}
