// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../domain/box.dart';
import 'day_check_box.dart';
import 'week_check_box.dart';
import 'year_check_box.dart';

class CheckBoxSection<T extends Box> extends HookWidget {
  const CheckBoxSection({
    super.key,
    required this.sectionEntry,
    required this.current,
  });

  final MapEntry<int, List<T>> sectionEntry;
  final int current;

  @override
  Widget build(BuildContext context) {
    if (sectionEntry.value.isEmpty) {
      return const SizedBox.shrink();
    }
    final sectionTitle = useMemoized(
        () =>
            sectionEntry.value.first.toSectionTitle(context, sectionEntry.key),
        [sectionEntry]);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      padding: EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: Text(sectionTitle),
          ),
          Gap(8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (T box in sectionEntry.value)
                    switch (box) {
                      DayBox() => DayCheckBox(
                          dayBox: box,
                          current: current,
                        ),
                      WeekBox() => WeekCheckBox(
                          weekBox: box,
                          current: current,
                        ),
                      YearBox() => YearCheckBox(
                          yearBox: box,
                          current: current,
                        ),
                    }
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
