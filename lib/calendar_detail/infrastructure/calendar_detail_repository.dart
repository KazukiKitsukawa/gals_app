import 'package:hooks_riverpod/hooks_riverpod.dart';

final calendarDetailRepository = Provider((ref) {
  return const CalendarDetailRepository();
});

class CalendarDetailRepository {
  const CalendarDetailRepository();

  ///
  /// HTMLタグを除外　ここではURLの成形は行わない。
  ///
  String htmlTagReplace(String description) {
    final calendarDescription = description
        .replaceAll('<br>', '\n')
        .replaceAll('<p>', '')
        .replaceAll('</p>', '')
        .replaceAll('<b>', '')
        .replaceAll('</b>', '')
        .replaceAll('<a dir="ltr" href="', '')
        .replaceAll('<a href="', '')
        .replaceAll('</a>', '')
        .replaceAll('">', '')
        .replaceAll('<span>', '')
        .replaceAll('</span>', '')
        .replaceAll('&amp;', '&')
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>');
    final excludeUrlDescription = excludeUrl(calendarDescription);

    final urlDescription = '$excludeUrlDescription \n ${getUrl(description)}';
    return urlDescription;
  }

  ///
  /// チケットのURL除外
  ///
  String excludeUrl(String description) => description
      .replaceAll('🎟', '')
      .replaceAll(RegExp(r"(http|ftp|https)://([\w_-]+)([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?"), "");

  ///
  /// タグを外したHTMLからURLを取得
  ///
  String getUrl(String description) {
    String url = '';
    RegExp regExp = RegExp(r'https?://([\w-]+\.)+[\w-]+(/[\w-./?%&=#]*)?');
    Iterable<RegExpMatch> matches = regExp.allMatches(description);
    for (RegExpMatch regExpMatch in matches) {
      url = description.substring(regExpMatch.start, regExpMatch.end);
    }
    return url;
  }
}
