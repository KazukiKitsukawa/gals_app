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

class _ThankYouGalsPageState extends State<ThankYouGalsPage> with TickerProviderStateMixin {
  late AnimationController _juliController;
  late AnimationController _ramuController;
  late AnimationController _lunaController;
  late AnimationController _marineController;
  late Animation<Offset> _juliAnimation;
  late Animation<Offset> _ramuAnimation;
  late Animation<Offset> _lunaAnimation;
  late Animation<Offset> _marineAnimation;
  @override
  void initState() {
    // JULI
    _juliController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _juliAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -0.2),
    ).animate(
      CurvedAnimation(parent: _juliController, curve: Curves.fastOutSlowIn),
    );
    // RAMU
    _ramuController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _ramuAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -0.2),
    ).animate(
      CurvedAnimation(parent: _ramuController, curve: Curves.fastOutSlowIn),
    );
    // LUNA
    _lunaController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _lunaAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -0.2),
    ).animate(
      CurvedAnimation(parent: _lunaController, curve: Curves.fastOutSlowIn),
    );
    // MARINE
    _marineController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _marineAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -0.2),
    ).animate(
      CurvedAnimation(parent: _marineController, curve: Curves.fastOutSlowIn),
    );
    super.initState();
  }

  @override
  void dispose() {
    _juliController.dispose();
    _ramuController.dispose();
    _lunaController.dispose();
    _marineController.dispose();
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
              style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size24.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.center,
              '最後の最後まで素敵なライブを\n見せてくれてありがとう！',
              style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size18.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'GALS is Forever!!',
              style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size24.sp),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _juliController.forward();
                    _juliController.addStatusListener((status) {
                      if (status == AnimationStatus.completed) {
                        _juliController.reverse();
                      }
                    });
                  });
                },
                child: SlideTransition(
                  position: _juliAnimation,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: GalsAppAssetImage.bitJuli,
                      width: 75,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _ramuController.forward();
                    _ramuController.addStatusListener((status) {
                      if (status == AnimationStatus.completed) {
                        _ramuController.reverse();
                      }
                    });
                  });
                },
                child: SlideTransition(
                  position: _ramuAnimation,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: GalsAppAssetImage.bitRamu,
                      width: 75,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _lunaController.forward();
                    _lunaController.addStatusListener((status) {
                      if (status == AnimationStatus.completed) {
                        _lunaController.reverse();
                      }
                    });
                  });
                },
                child: SlideTransition(
                  position: _lunaAnimation,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: GalsAppAssetImage.bitLuna,
                      width: 75,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _marineController.forward();
                    _marineController.addStatusListener((status) {
                      if (status == AnimationStatus.completed) {
                        _marineController.reverse();
                      }
                    });
                  });
                },
                child: SlideTransition(
                  position: _marineAnimation,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: GalsAppAssetImage.bitMarine,
                      width: 75,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
