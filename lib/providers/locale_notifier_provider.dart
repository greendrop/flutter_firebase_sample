// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/notifiers/locale_notifier.dart';

final localeNotifierProvider =
    StateNotifierProvider<LocaleNotifier, Locale?>((_) => LocaleNotifier());
