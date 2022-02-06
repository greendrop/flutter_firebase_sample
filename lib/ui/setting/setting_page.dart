// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/ui/drawer/drawer_content.dart';
import 'package:flutter_firebase_sample/ui/setting/setting_form.dart';
import 'package:flutter_firebase_sample/ui/widgets/app_bar_leading.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.settingTitle),
        leading: const AppBarLeading(),
      ),
      drawer: const DrawerContent(),
      body: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: SettingForm(),
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
