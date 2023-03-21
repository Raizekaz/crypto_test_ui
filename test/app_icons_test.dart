import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_ui_1/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.iconChart).existsSync(), true);
    expect(File(AppIcons.iconDots).existsSync(), true);
    expect(File(AppIcons.iconGreyCircle).existsSync(), true);
    expect(File(AppIcons.iconHome).existsSync(), true);
    expect(File(AppIcons.iconMenuFirstCopy).existsSync(), true);
    expect(File(AppIcons.iconMenuSecond).existsSync(), true);
    expect(File(AppIcons.iconMinus).existsSync(), true);
    expect(File(AppIcons.iconPaper).existsSync(), true);
    expect(File(AppIcons.iconPlus).existsSync(), true);
    expect(File(AppIcons.iconSvechi).existsSync(), true);
    expect(File(AppIcons.iconUnion).existsSync(), true);
    expect(File(AppIcons.iconWallet).existsSync(), true);
    expect(File(AppIcons.iconWhiteHorizontalVector).existsSync(), true);
    expect(File(AppIcons.iconWhiteVerticalVector).existsSync(), true);
  });
}
