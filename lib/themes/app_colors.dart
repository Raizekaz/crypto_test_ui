import 'package:flutter/material.dart';

abstract class AppThemes {
  static final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    iconTheme: IconThemeData(
      color: AppColors.grey,
      size: 16,
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.greyBox,
      thickness: 0.5,
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark(
      primary: AppColors.white,
    ),
  );
}

abstract class AppColors {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;
  static const Color green = Colors.green;
  static const Color transparent = Colors.transparent;
  static const Color redOpacity = Color.fromRGBO(247, 47, 114, 0.12);
  static const Color greenOpacity = Color.fromRGBO(32, 201, 151, 0.12);
  static const Color redText = Color(0xFFF72F72);
  static const Color greenText = Color(0xFF20C997);
  static const Color greenBox = Color.fromRGBO(32, 201, 151, 0.12);
  static const Color greyText = Color(0xFF7D8696);
  static const Color greyBox = Color(0xFF333A47);
  static const Color primaryBackground = Color(0xFF212630);
  static const Color stepper = Color(0xFF333A47);
  static const Color checkbox = Color(0xFF1F62F1);
}

abstract class AppColorsGradient {
  static final BoxDecoration greenColor = BoxDecoration(
    color: AppColors.greenBox,
    borderRadius: BorderRadius.all(Radius.circular(6)),
    border: Border.all(color: AppColors.primaryBackground),
  );

  static const BoxDecoration greyColor = BoxDecoration(
    color: AppColors.greyBox,
    borderRadius: BorderRadius.all(Radius.circular(6)),
  );
}
