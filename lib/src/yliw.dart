import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub_semver/pub_semver.dart';

import 'common/controller/global_controller.dart';
import 'common/utils/app_utils.dart';
import 'common/utils/extensions/custom_extensions.dart';
import 'common/utils/toast/toast.dart';
import 'features/setup/controller/setup_controller.dart';
import 'router/router_config.dart';

class YLIW extends HookConsumerWidget {
  const YLIW({super.key});

  Future<void> checkForUpdate({
    required BuildContext context,
    required Future<AsyncValue<Version?>> Function() updateCallback,
    required Toast? toast,
  }) async {
    final AsyncValue<Version?> versionResult = await updateCallback();
    toast?.close();
    if (!context.mounted) return;
    versionResult.whenOrNull(
      data: (version) {
        if (version != null) {
          AppUtils.appUpdateDialog(
            title: context.l10n.appName,
            newRelease: "v${version.canonicalizedVersion}",
            context: context,
            toast: toast,
          );
        }
      },
    );
  }

  @override
  Widget build(context, ref) {
    final routerConfig = ref.watch(routerConfigProvider);
    final dob = ref.watch(userDateOfBirthProvider).valueOrNull;
    final packageInfo = ref.watch(packageInfoProvider);
    final appUpdateCheck = ref.watch(appUpdateCheckProvider);
    useEffect(() {
      if (appUpdateCheck) return;
      Future.microtask(
        () {
          final localContext =
              rootNavigatorKey.currentState?.context ?? context;
          if (localContext.mounted) {
            ref.read(appUpdateCheckProvider.notifier).checkCompleted();
            return checkForUpdate(
              context: localContext,
              updateCallback: () => AppUtils.checkUpdate(packageInfo),
              toast: ref.read(toastProvider),
            );
          }
        },
      );
      return;
    }, [appUpdateCheck]);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        Widget builderChild = Overlay(
          initialEntries: [
            if (child != null) OverlayEntry(builder: (context) => child)
          ],
        );
        if (dob != null && dob.isSameDay(DateTime.now())) {
          builderChild = Banner(
            message: context.l10n.hbd,
            location: BannerLocation.topEnd,
            child: builderChild,
          );
        }
        return builderChild;
      },
      title: "YLIW",
      routerConfig: routerConfig,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
