import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gals_app/calendar_detail/calendar_detail_notifier.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class CalendarDetailPage extends HookConsumerWidget {
  const CalendarDetailPage({required this.calenderItem, Key? key}) : super(key: key);

  static const name = 'calendar_detail';
  static const path = 'calendar_detail';

  final String calenderItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendarDetail = ref.watch(calenderDetailNotifier.notifier);

    final calendarItem = ref.watch(calenderDetailNotifier.select((value) => value.calenderItem));
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        calendarDetail.init(calenderItem);
      });
      return null;
    }, []);
    return calendarItem.when(
        data: (data) {
          return BaseMainPage(
            showAppbar: false,
            title: 'GALSカレンダー',
            isSafeArea: true,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ),
                  const Image(
                    image: GalsAppAssetImage.artistImage,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Html(
                      data: data.description,
                      onLinkTap: (url, _, __, ___) {
                        if (url != null) {
                          launchUrl(Uri.parse(url));
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {
                            final box = context.findRenderObject() as RenderBox?;
                            Share.share(
                              data.noHtmlDescription,
                              sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
                            );
                          },
                          icon: const Icon(Icons.share),
                        )),
                  )
                ],
              ),
            ),
          );
        },
        error: (_, __) => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink());
  }
}
