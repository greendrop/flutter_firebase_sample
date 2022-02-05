// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';

class TaskFormFields extends HookConsumerWidget {
  const TaskFormFields({
    Key? key,
    this.initialTitle,
    this.initialDescription,
    this.initialDone,
    this.onSavedTitle,
    this.onSavedDescription,
    this.onChangedDone,
  }) : super(key: key);

  final String? initialTitle;
  final String? initialDescription;
  final bool? initialDone;
  final void Function(String?)? onSavedTitle;
  final void Function(String?)? onSavedDescription;
  final void Function(bool)? onChangedDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context)!;
    final themeData = Theme.of(context);
    final done = useState(initialDone ?? false);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(labelText: l10n.taskTitle),
          validator: (value) => Task.titleValidator(value, l10n),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: onSavedTitle,
        ),
        TextFormField(
          decoration: InputDecoration(labelText: l10n.taskDescription),
          keyboardType: TextInputType.multiline,
          maxLines: null,
          validator: (value) => Task.descriptionValidator(value, l10n),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: onSavedDescription,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.taskDone,
                  style: themeData.textTheme.subtitle1
                      ?.copyWith(color: themeData.disabledColor, fontSize: 12)),
              Switch(
                value: done.value,
                onChanged: (value) {
                  done.value = value;
                  if (onChangedDone != null) {
                    onChangedDone!(value);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
