// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/toast/toast.dart';
import '../../home/service/home_service.dart';

class SetupScreen extends HookConsumerWidget {
  const SetupScreen({super.key});

  void addDateOfBirth(BuildContext context, WidgetRef ref,
      ValueNotifier<bool> isLoading) async {
    if (isLoading.value) return;
    DateTime? dob = await showDatePicker(
      context: context,
      firstDate: DateTime(1960),
      lastDate: DateTime.now(),
    );
    isLoading.value = true;
    if (dob == null) {
      ref.read(toastProvider)?.show("Please select your Date of birth");
    } else {
      await ref.read(homeServiceProvider).initialSetup(dob);
    }
    isLoading.value = false;
  }

  @override
  Widget build(context, ref) {
    final isLoading = useState(false);
    useEffect(() {
      Future.microtask(() {
        if (context.mounted) {
          addDateOfBirth(context, ref, isLoading);
        }
      });
      return null;
    }, []);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.appName),
      ),
      body: Center(
        child: isLoading.value
            ? SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(),
                    Gap(8),
                    Text(context.l10n.settingUp),
                  ],
                ),
              )
            : ElevatedButton(
                onPressed: () => addDateOfBirth(context, ref, isLoading),
                child: Text(context.l10n.enterDob),
              ),
      ),
    );
  }
}
