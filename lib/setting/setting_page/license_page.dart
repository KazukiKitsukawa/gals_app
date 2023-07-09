import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gals_app/component/base_main_page.dart';

class CustomLicensePage extends StatefulWidget {
  const CustomLicensePage({super.key});

  static const String path = 'customLicensePage';
  static const String name = 'customLicensePage';

  @override
  State<CustomLicensePage> createState() => _CustomLicensePageState();
}

class _CustomLicensePageState extends State<CustomLicensePage> {
  List<List<String>> licenses = [];
  @override
  void initState() {
    super.initState();
    LicenseRegistry.licenses.listen((license) {
      // license.packagesとlicense.paragraphsの返り値がIterableなのでtoList()してる
      final packages = license.packages.toList();
      final paragraphs = license.paragraphs.toList();
      final packageName = packages.map((e) => e).join('');
      final paragraphText = paragraphs.map((e) => e.text).join('\n');
      // この辺の状態更新とかは環境に合わせてお好みで
      licenses.add([packageName, paragraphText]);
      setState(() => licenses = licenses);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseMainPage(
      showAppbar: true,
      onPop: true,
      isSafeArea: true,
      child: ListView.builder(
          itemCount: licenses.length,
          itemBuilder: (context, index) {
            final license = licenses[index];
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    license[0],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    license[1],
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            );
          }),
    );
  }
}
