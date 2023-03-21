import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ui_1/components/amount_container_widget.dart';
import 'package:test_ui_1/components/image_icon_button_widget.dart';
import 'package:test_ui_1/resources/resources.dart';
import 'package:test_ui_1/src/features/charts/bloc/charts_bloc.dart';
import 'package:test_ui_1/themes/app_colors.dart';
import 'package:test_ui_1/themes/app_text_styles.dart';

class ThirdSectionWidget extends StatelessWidget {
  ThirdSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AmountButtonWidget(
                  height: 24,
                  width: 123,
                  text: Text(
                    'Open Orders (6)',
                    style: AppTextStyles.fs14fw600,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Funds',
                  style: AppTextStyles.fs14fw600grey,
                ),
              ],
            ),
            ImageIconButtonWidget(icon: AppIcons.iconPaper),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 14,
                  width: 20,
                  child: CheckboxWidget(),
                ),
                SizedBox(width: 10),
                Text(
                  'Show all',
                  style: AppTextStyles.fs14fw600grey,
                ),
              ],
            ),
            AmountButtonWidget(
              height: 24,
              width: 80,
              text: Text(
                'Cancel all',
                style: AppTextStyles.fs14fw600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CheckboxWidget extends StatelessWidget {
  CheckboxWidget();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ChartsBloc>(context);
    return BlocBuilder<ChartsBloc, ChartsState>(
      builder: (_, state) {
        return Checkbox(
          fillColor: MaterialStateProperty.all(AppColors.checkbox),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          value: state.status.isShow ? true : false,
          onChanged: (bool) {
            if (state.status.isShow) {
              bloc.add(ChartsEventCheckboxClose());
            } else if (state.status.isNotShow) {
              bloc.add(ChartsEventCheckboxShow());
            }
            ;
          },
        );
      },
    );
  }
}
