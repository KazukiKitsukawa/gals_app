import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/mainpage/state/viewitem/gals_member_info.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class MemberDetailPage extends StatefulWidget {
  const MemberDetailPage({
    required this.memberInfo,
    Key? key,
  }) : super(key: key);

  static const String path = 'memberDetailPage';
  static const String name = 'memberDetailPage';

  final GalsMemberInfo memberInfo;

  @override
  State<MemberDetailPage> createState() => _MemberDetailPageState();
}

class _MemberDetailPageState extends State<MemberDetailPage> {
  double dragOffset = 0.0;
  bool isChangeWidget = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > 0) {
          setState(() {
            dragOffset += details.delta.dx;
          });
        }
      },
      onHorizontalDragEnd: (details) {
        if (dragOffset.abs() > 100) {
          setState(() {
            dragOffset = 0.0;
          });
          context.pop();
        } else {
          setState(() {
            dragOffset = 0.0;
          });
        }
        // スワイプ終了時に実行する処理
      },
      child: Transform.translate(
        offset: Offset(dragOffset, 0),
        child: BaseMainPage(
          showAppbar: false,
          isSafeArea: false,
          child: Container(
            color: GalsColor.whiteColor,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Hero(
                        tag: widget.memberInfo.memberImage,
                        child: CachedNetworkImage(
                          imageUrl: widget.memberInfo.memberImage,
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
                            tag: widget.memberInfo,
                            child: Text(
                              widget.memberInfo.memberName,
                              style: UseGoogleFont.lemon.style.copyWith(
                                color: GalsColor.backgroundColor,
                                fontSize: size36,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.memberInfo.synopsys.replaceAll('\\n', '\n'),
                          style: UseGoogleFont.zenKaku.style.copyWith(
                            color: GalsColor.backgroundColor,
                            overflow: TextOverflow.clip,
                            fontSize: size14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '誕生日：${widget.memberInfo.birthday}',
                            style: UseGoogleFont.zenKaku.style.copyWith(
                              color: GalsColor.backgroundColor,
                              fontSize: size14,
                            ),
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
                            Uri.parse(widget.memberInfo.urls.memberTwitterUrl),
                          ),
                        ),
                        SnsIconButton(
                          snsIcon: FontAwesomeIcons.instagram,
                          text: 'Instagram',
                          onTap: () => launchUrl(
                            Uri.parse(widget.memberInfo.urls.memberInstagramURL),
                          ),
                        ),
                        SnsIconButton(
                          snsIcon: FontAwesomeIcons.s,
                          text: 'SHOWROOM',
                          onTap: () => launchUrl(
                            Uri.parse(widget.memberInfo.urls.showroomUrl),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
            child: Text(
              text,
              style: UseGoogleFont.zenKaku.style.copyWith(
                color: GalsColor.backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
