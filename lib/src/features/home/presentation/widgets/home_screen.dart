import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../common/utils/app_utils.dart';
import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../domain/box.dart';
import 'app_drawer.dart';
import 'check_box_section/check_box_section.dart';

class HomeScreen<T extends Box> extends HookWidget {
  const HomeScreen({
    super.key,
    required this.asyncBoxMap,
    required this.currentSection,
    required this.currentBox,
  });
  final AsyncValue<LinkedHashMap<int, List<T>>?> asyncBoxMap;
  final int currentSection;
  final int currentBox;

  @override
  Widget build(BuildContext context) {
    final itemScrollController = useMemoized(() => ItemScrollController(), []);
    final itemPositionsListener =
        useMemoized(() => ItemPositionsListener.create(), []);
    final currentYearScrollOffset = useListenableSelector(
        itemPositionsListener.itemPositions,
        AppUtils.getItemVisibleListener(
            itemPositionsListener.itemPositions, currentSection));

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.appName)),
      drawer: AppDrawer(),
      floatingActionButton: currentYearScrollOffset != 0
          ? FloatingActionButton(
              child: RotatedBox(
                quarterTurns: currentYearScrollOffset,
                child: Icon(Icons.arrow_back_ios_new_rounded),
              ),
              onPressed: () {
                itemScrollController.scrollTo(
                    index: currentSection,
                    alignment: 0.3,
                    duration: Duration(milliseconds: 500));
              },
            )
          : null,
      body: asyncBoxMap.showUiWhenData(context, (data) {
        final yearBoxMapEntryList = data?.entries.toList() ?? [];
        return GestureDetector(
          onTap: () => context.hideKeyboard,
          child: ScrollablePositionedList.builder(
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            initialScrollIndex: currentSection,
            initialAlignment: 0.3,
            itemCount: yearBoxMapEntryList.length,
            itemBuilder: (context, index) {
              final entry = yearBoxMapEntryList[index];
              return CheckBoxSection(
                sectionEntry: entry,
                current: currentBox,
              );
            },
          ),
        );
      }),
    );
  }
}
