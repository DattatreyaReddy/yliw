import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../home/enums/box_status.dart';

class BoxStatusUpdateDropdown extends HookWidget {
  const BoxStatusUpdateDropdown({
    super.key,
    required this.current,
    required this.onChanged,
  });
  final BoxStatus current;
  final ValueChanged<BoxStatus> onChanged;
  @override
  Widget build(BuildContext context) {
    final selectedStatus = useState(current);
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          autofocus: false,
          valueListenable: selectedStatus,
          isDense: true,
          isExpanded: false,
          dropdownStyleData: DropdownStyleData(
            width: 250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          ),
          customButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: BoxStatusChip(
              hideTitle: context.isSmallTabletOrLess,
              status: selectedStatus.value,
              addDropdownIcon: true,
            ),
          ),
          onChanged: (status) {
            if (status == null) return;
            selectedStatus.value = status;
            onChanged(status);
          },
          items: BoxStatus.values
              .map((status) => DropdownItem(
                    value: status,
                    child: BoxStatusChip(status: status),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class BoxStatusChip extends StatelessWidget {
  const BoxStatusChip({
    super.key,
    required this.status,
    this.addDropdownIcon = false,
    this.hideTitle = false,
  });
  final BoxStatus status;
  final bool addDropdownIcon;
  final bool hideTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.circle, color: status.color),
        if (!hideTitle) ...[
          Gap(8),
          Text(status.getLabel(context)),
        ],
        if (addDropdownIcon) ...[
          if (!hideTitle) Gap(8),
          Icon(Icons.arrow_drop_down_rounded),
        ],
      ],
    );
  }
}
