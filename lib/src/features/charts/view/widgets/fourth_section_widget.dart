import 'package:flutter/material.dart';
import 'package:test_ui_1/components/amount_container_widget.dart';
import 'package:test_ui_1/src/features/charts/data/mock_entity.dart';
import 'package:test_ui_1/themes/app_text_styles.dart';

class FourthSectionWidget extends StatelessWidget {
  const FourthSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: SizedBox(
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: AppTextStyles.fs14fw700,
                          children: [
                            TextSpan(text: entity[index].name),
                            TextSpan(text: ' / '),
                            TextSpan(text: entity[index].currency),
                          ],
                        ),
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          style: entity[index].buy != true
                              ? AppTextStyles.fs13fw700red
                              : AppTextStyles.fs13fw700green,
                          children: [
                            TextSpan(text: 'Limit'),
                            TextSpan(text: ' / '),
                            TextSpan(
                              text: entity[index].buy != true ? 'Sell' : 'Buy',
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Amount',
                              style: AppTextStyles.fs13fw600grey,
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: AppTextStyles.fs13fw600grey,
                                children: [
                                  TextSpan(
                                    text: '0,00',
                                    style: AppTextStyles.fs13fw600,
                                  ),
                                  TextSpan(text: ' / '),
                                  TextSpan(
                                    text: entity[index].amount.toString(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Price',
                              style: AppTextStyles.fs13fw600grey,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              entity[index].price.toString(),
                              style: AppTextStyles.fs13fw600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        entity[index].time,
                        style: AppTextStyles.fs13fw600grey,
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: AmountButtonWidget(
                          height: 24,
                          width: 65,
                          text: Text(
                            'Cancel',
                            style: AppTextStyles.fs14fw600,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: entity.length,
    );
  }
}
