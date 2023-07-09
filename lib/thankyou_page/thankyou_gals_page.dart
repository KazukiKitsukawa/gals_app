import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';

class ThankYouGalsPage extends StatefulWidget {
  const ThankYouGalsPage({super.key});

  static const String path = '/thankYouGalsPage';
  static const String name = 'thankYouGalsPage';

  @override
  State<ThankYouGalsPage> createState() => _ThankYouGalsPageState();
}

class _ThankYouGalsPageState extends State<ThankYouGalsPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseMainPage(
      showAppbar: false,
      isSafeArea: false,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              const Image(
                image: GalsAppAssetImage.artistImage,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 15.h,
                child: Image(
                  image: GalsAppAssetImage.splashPicture,
                  color: GalsColor.whiteColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '2021年6月6日〜2023年7月4日',
              style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size18.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '最後の最後まで素敵なライブを見せてくれてありがとう！',
              style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size12.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'GALS is Forever!!',
              style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size18.sp),
            ),
          ),
        ],
      ),
    );
  }
}
