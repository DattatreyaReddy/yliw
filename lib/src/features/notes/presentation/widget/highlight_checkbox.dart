import 'package:flutter/material.dart';

import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../home/domain/box.dart';

class HighlightCheckbox extends StatelessWidget {
  const HighlightCheckbox({
    super.key,
    required this.box,
    required this.onChanged,
  });

  final Box box;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: context.l10n.highlight,
      child: Checkbox(
        semanticLabel: context.l10n.highlight,
        activeColor: Colors.amber,
        shape: CircleBorder(),
        value: box.hasLandMark,
        onChanged: (val) => onChanged(val.ifNull()),
      ),
    );
  }
}
