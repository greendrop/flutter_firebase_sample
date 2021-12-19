// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:state_notifier/state_notifier.dart';

// Project imports:
import 'package:flutter_firebase_sample/repositories/locale_repository.dart';

class LocaleNotifier extends StateNotifier<Locale?> {
  LocaleNotifier({LocaleRepository? localeRepository}) : super(null) {
    this.localeRepository = localeRepository ?? LocaleRepository();
  }

  late LocaleRepository localeRepository;

  Future<void> initialize() async {
    state = await localeRepository.fetch();
  }

  Future<void> setLocale(Locale? locale) async {
    state = locale;
    await localeRepository.update(locale);
  }
}
