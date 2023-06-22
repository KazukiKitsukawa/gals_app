import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/component/large_text.dart';
import 'package:gals_app/component/smail_text.dart';
import 'package:gals_app/mainpage/state/viewitem/gals_member_info.dart';
import 'package:gals_app/util/color.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class MemberDetailPage extends StatelessWidget {
  const MemberDetailPage({
    required this.memberInfo,
    Key? key,
  }) : super(key: key);

  static const String path = 'memberDetailPage';
  static const String name = 'memberDetailPage';

  final GalsMemberInfo memberInfo;

  @override
  Widget build(BuildContext context) {
    return BaseMainPage(
      showAppbar: false,
      isSafeArea: false,
      child: Container(
        color: GalsColor.whiteColor,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: memberInfo.memberImage,
                    child: CachedNetworkImage(
                      imageUrl: memberInfo.memberImage,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    child: IconButton(
                      color: GalsColor.whiteColor,
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Hero(
                        tag: memberInfo,
                        child: LargeText(
                          text: memberInfo.memberName,
                          textColor: GalsColor.backgroundColor,
                          isGoogleFont: true,
                          fontSize: 36,
                        ),
                      ),
                    ),
                    LargeText(
                      textOverflow: TextOverflow.clip,
                      text: memberInfo.synopsys.replaceAll('\\n', '\n'),
                      textColor: GalsColor.backgroundColor,
                      isGoogleFont: true,
                      fontSize: 16,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: LargeText(
                        text: '誕生日：${memberInfo.birthday}',
                        textColor: GalsColor.backgroundColor,
                        isGoogleFont: true,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SnsIconButton(
                      snsIcon: FontAwesomeIcons.twitter,
                      text: 'Twitter',
                      onTap: () => launchUrl(
                        Uri.parse(memberInfo.urls.memberTwitterUrl),
                      ),
                    ),
                    SnsIconButton(
                      snsIcon: FontAwesomeIcons.instagram,
                      text: 'Instagram',
                      onTap: () => launchUrl(
                        Uri.parse(memberInfo.urls.memberInstagramURL),
                      ),
                    ),
                    SnsIconButton(
                      snsIcon: FontAwesomeIcons.s,
                      text: 'SHOWROOM',
                      onTap: () => launchUrl(
                        Uri.parse(memberInfo.urls.showroomUrl),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SnsIconButton extends StatelessWidget {
  const SnsIconButton({
    super.key,
    required this.snsIcon,
    required this.text,
    required this.onTap,
  });

  final IconData snsIcon;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 80,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          IconButton(
            alignment: AlignmentDirectional.topCenter,
            onPressed: () {
              onTap();
            },
            icon: FaIcon(
              snsIcon,
              color: GalsColor.backgroundColor,
            ),
          ),
          Positioned(
            bottom: 5,
            child: SmailText(
              text: text,
              textColor: GalsColor.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
