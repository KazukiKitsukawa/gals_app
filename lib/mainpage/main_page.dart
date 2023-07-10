import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/mainpage/gals_string.dart';
import 'package:gals_app/member_detail/member_detail_page.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gals_app/mainpage/main_page_notifier.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  static const path = '/mainPage';
  static const name = 'mainPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainPage = ref.watch(mainPageNotifier.notifier);
    final songList = ref.watch(mainPageNotifier.select((value) => value.galsMusicList));
    final memberProfile = ref.watch(mainPageNotifier.select((value) => value.galsMemberInfo));
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        mainPage.init();
      });
      return null;
    }, []);
    return BaseMainPage(
      showAppbar: false,
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: GalsAppAssetImage.artistImage,
                fit: BoxFit.cover,
              ),
            ),
            automaticallyImplyLeading: false,
            expandedHeight: 200.w,
            backgroundColor: GalsColor.whiteColor,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                GalsString.aboutMe,
                style: UseGoogleFont.lemon.style.copyWith(
                  color: GalsColor.backgroundColor,
                  fontSize: size36,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    GalsString.galsAbout,
                    style: UseGoogleFont.zenKaku.style.copyWith(
                      fontSize: size16,
                      color: GalsColor.blackColor,
                      height: spacing1half,
                      overflow: clip,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      GalsString.galsAboutSmallText,
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        fontSize: size12,
                        color: GalsColor.blackColor,
                        overflow: clip,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      GalsString.lunaGreetText,
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        fontSize: size16,
                        color: GalsColor.blackColor,
                        overflow: clip,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      GalsString.lunaGreetSmallText,
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        fontSize: 12,
                        overflow: clip,
                        color: GalsColor.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  GalsString.memberProfile,
                  style: UseGoogleFont.lemon.style.copyWith(
                    color: GalsColor.backgroundColor,
                    fontSize: size36,
                  ),
                ),
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: true,
              (context, index) {
                return memberProfile.when(data: (data) {
                  return Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: GestureDetector(
                          child: Hero(
                            transitionOnUserGestures: true,
                            tag: data[index].memberImage,
                            child: CachedNetworkImage(
                              imageUrl: data[index].memberImage,
                            ),
                          ),
                          onTap: () {
                            context.goNamed(MemberDetailPage.name, extra: data[index]);
                          },
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 15.w,
                        child: Hero(
                          tag: data[index].memberName,
                          child: Text(
                            data[index].memberName,
                            style: UseGoogleFont.lemon.style.copyWith(
                              color: GalsColor.whiteColor,
                              fontSize: size24.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }, error: (Object error, StackTrace stackTrace) {
                  return null;
                }, loading: () {
                  return Center(
                    child: CircularProgressIndicator(
                      color: GalsColor.backgroundColor,
                    ),
                  );
                });
              },
              childCount: 4,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.7,
              crossAxisCount: 2,
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  GalsString.music,
                  style: UseGoogleFont.lemon.style.copyWith(
                    color: GalsColor.backgroundColor,
                    fontSize: size36,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: songList.when(
              data: (data) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    children: [
                      CarouselSlider.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index, _) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: GestureDetector(
                                  child: CachedNetworkImage(
                                    fadeInDuration: const Duration(milliseconds: 100),
                                    imageUrl: data[index].imageUrl,
                                  ),
                                  onTap: () {
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
                                              physics: const ClampingScrollPhysics(),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(vertical: 4),
                                                      child: CachedNetworkImage(
                                                        imageUrl: data[index].imageUrl,
                                                        width: 200.w,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                                        child: Text(
                                                          data[index].title,
                                                          style: UseGoogleFont.zenKaku.style.copyWith(
                                                            fontSize: size16,
                                                            color: GalsColor.backgroundColor,
                                                          ),
                                                        ),
                                                      ),
                                                      IconButton(
                                                        onPressed: () {
                                                          launchUrl(Uri.parse(data[index].url));
                                                        },
                                                        icon: const FaIcon(
                                                          FontAwesomeIcons.music,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                                    child: Align(
                                                      alignment: Alignment.centerRight,
                                                      child: Text(
                                                        '発売日：${data[index].releaseDate}',
                                                        style: UseGoogleFont.zenKaku.style.copyWith(
                                                          fontSize: size16,
                                                          color: GalsColor.backgroundColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  for (int i = 0; i < data[index].songList.length; i++) ...{
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 4),
                                                      child: Text(
                                                        textAlign: TextAlign.start,
                                                        '${i + 1}.${data[index].songList[i]}',
                                                        style: UseGoogleFont.zenKaku.style.copyWith(
                                                          fontSize: size12,
                                                          color: GalsColor.backgroundColor,
                                                        ),
                                                      ),
                                                    ),
                                                  },
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  data[index].title,
                                  style: UseGoogleFont.zenKaku.style.copyWith(
                                    fontSize: size12.sp,
                                    color: GalsColor.backgroundColor,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        options: CarouselOptions(
                          disableCenter: true,
                          pageSnapping: false,
                          padEnds: false,
                          viewportFraction: 0.5,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                        ),
                      ),
                    ],
                  ),
                );
              },
              error: (_, __) {
                return const SizedBox.shrink();
              },
              loading: () => Center(
                child: CircularProgressIndicator(
                  color: GalsColor.backgroundColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
