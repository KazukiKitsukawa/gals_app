import 'package:flutter/material.dart';
import 'package:gals_app/component/base_text_button.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';
import 'package:go_router/go_router.dart';

void dateError(BuildContext context, int ranNum) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: GalsColor.whiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  '日付を選択してください',
                  style: UseGoogleFont.zenKaku.style
                      .copyWith(fontSize: size18, color: GalsColor.backgroundColor, fontWeight: FontWeight.w700),
                ),
                Image(
                  image: GalsAppAssetImage.galsBitPicture[ranNum],
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: BaseTextButton(
                    onPressed: () {
                      context.pop();
                    },
                    buttonText: '戻る',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

void setListEmptyError(BuildContext context, int ranNum) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: GalsColor.whiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  '曲が入っていません\n曲を追加してください。',
                  style: UseGoogleFont.zenKaku.style
                      .copyWith(fontSize: size18, color: GalsColor.backgroundColor, fontWeight: FontWeight.w700),
                ),
                Image(
                  image: GalsAppAssetImage.galsBitPicture[ranNum],
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: BaseTextButton(
                    onPressed: () {
                      context.pop();
                    },
                    buttonText: '戻る',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
