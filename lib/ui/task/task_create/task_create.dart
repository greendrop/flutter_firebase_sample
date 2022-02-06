// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/firebase_auth_provider.dart';
import 'package:flutter_firebase_sample/providers/task/task_create_state_notifier_provider.dart';
import 'package:flutter_firebase_sample/ui/task/task_form_fields.dart';

class TaskCreate extends HookConsumerWidget {
  const TaskCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context)!;
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final title = useState<String?>(null);
    final description = useState<String?>(null);
    final done = useState(false);

    return Card(
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TaskFormFields(
                onSavedTitle: (value) => title.value = value,
                onSavedDescription: (value) => description.value = value,
                onChangedDone: (value) => done.value = value,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        final firebaseAuth = ref.watch(firebaseAuthProvider);
                        final task = Task().copyWith(
                          userId: firebaseAuth.currentUser?.uid,
                          title: title.value,
                          description: description.value,
                          done: done.value,
                        );

                        ref
                            .read(taskCreateStateNotifierProvider.notifier)
                            .createTask(task)
                            .then((value) {
                          final snackBar =
                              SnackBar(content: Text(l10n.taskCreated));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Navigator.pop(context);
                        }).onError((error, stackTrace) {
                          final snackBar =
                              SnackBar(content: Text(l10n.occurredError));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        });
                      }
                    },
                    child: Text(l10n.create),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
