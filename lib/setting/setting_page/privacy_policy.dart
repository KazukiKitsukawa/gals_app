import 'package:flutter/material.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  static const String name = 'privacyPolicy';
  static const String path = 'privacyPolicy';

  @override
  Widget build(BuildContext context) {
    return BaseMainPage(
        showAppbar: true,
        onPop: true,
        isSafeArea: false,
        title: 'プライバシーポリシー',
        child: Container(
          color: GalsColor.whiteColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PrivacyTitleText(
                    text: '1. 個人情報の収集',
                  ),
                  Divider(
                    height: 1,
                    color: GalsColor.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      '私たち「kk-fizz」は、ユーザーから以下の情報を収集します。',
                      style: UseGoogleFont.zenKaku.style,
                    ),
                  ),
                  const DotText(
                    dotText: 'ユーザーが自分で提供する情報：ユーザーが当社のサービスを使用する際に提供する情報（例：氏名、メールアドレス、電話番号、住所など）',
                  ),
                  const DotText(
                    dotText: '自動的に収集する情報：当社のサービスを使用した際に、技術的な手段を用いて自動的に収集される情報（例：IPアドレス、ブラウザの種類、訪問時間、訪問ページなど）',
                  ),
                  const PrivacyTitleText(
                    text: '2. 個人情報の利用',
                  ),
                  Divider(
                    height: 1,
                    color: GalsColor.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      '当社は、収集した情報を以下の目的で使用します。',
                      style: UseGoogleFont.zenKaku.style,
                    ),
                  ),
                  const DotText(
                    dotText: 'サービスの提供、維持、改善',
                  ),
                  const DotText(
                    dotText: 'ユーザーサポート',
                  ),
                  const DotText(
                    dotText: 'ユーザーとのコミュニケーション（重要なお知らせ、プロモーションなど）',
                  ),
                  const DotText(
                    dotText: '法律上必要な場合',
                  ),
                  const PrivacyTitleText(
                    text: '3. 個人情報の共有と開示',
                  ),
                  Divider(
                    height: 1,
                    color: GalsColor.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      '当社は、以下の場合を除き、ユーザーの個人情報を第三者と共有しません。',
                      style: UseGoogleFont.zenKaku.style,
                    ),
                  ),
                  const DotText(
                    dotText: 'ユーザーの同意がある場合',
                  ),
                  const DotText(
                    dotText: '法律的な要件を満たすために必要な場合',
                  ),
                  const DotText(
                    dotText: '当社の権利を保護するために必要な場合',
                  ),
                  const PrivacyTitleText(
                    text: '4. クッキーとトラッキング',
                  ),
                  Divider(
                    height: 1,
                    color: GalsColor.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      '当社のウェブサイトはクッキーを使用しています。クッキーは、ユーザーの体験を改善するため、また、当社がサービスを改善するための情報を収集する手段として使用されます。',
                      style: UseGoogleFont.zenKaku.style,
                    ),
                  ),
                  const PrivacyTitleText(
                    text: '5. ユーザーの権利',
                  ),
                  Divider(
                    height: 1,
                    color: GalsColor.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'ユーザーは、自身の個人情報に対するアクセス、修正、削除の権利を持っています。これらの要求については、当社までお問い合わせください。',
                      style: UseGoogleFont.zenKaku.style,
                    ),
                  ),
                  const PrivacyTitleText(
                    text: '6. プライバシーポリシーの変更',
                  ),
                  Divider(
                    height: 1,
                    color: GalsColor.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      '当社は、必要に応じてプライバシーポリシーを更新する権利を保持しています。変更があった場合、当社はユーザーに通知します。',
                      style: UseGoogleFont.zenKaku.style,
                    ),
                  ),
                  const PrivacyTitleText(
                    text: '7. 連絡先情報',
                  ),
                  Divider(
                    height: 1,
                    color: GalsColor.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'プライバシーポリシーに関する質問やコメント、または個人情報の取り扱いについてのご意見がある場合は、以下の連絡先までお願いします。',
                      style: UseGoogleFont.zenKaku.style,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'kk-fizz お客様相談室',
                      style: UseGoogleFont.zenKaku.style.copyWith(fontWeight: FontWeight.w600, fontSize: size18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      'ktkt@kk-fizz.com',
                      style: UseGoogleFont.zenKaku.style.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class DotText extends StatelessWidget {
  const DotText({
    super.key,
    required this.dotText,
  });

  final String dotText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '・',
            style: UseGoogleFont.zenKaku.style,
          ),
          Expanded(
            child: Text(
              dotText,
              style: UseGoogleFont.zenKaku.style.copyWith(overflow: TextOverflow.clip),
            ),
          )
        ],
      ),
    );
  }
}

class PrivacyTitleText extends StatelessWidget {
  const PrivacyTitleText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: UseGoogleFont.zenKaku.style.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
