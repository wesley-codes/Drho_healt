import 'package:dro_health/Widgets/GrabbingWidget.dart';
import 'package:dro_health/components/CartBag.dart';
import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class DraggableContainer extends StatelessWidget {
  final ScrollController listViewController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    final ScrollController listViewController = new ScrollController();
    return SnappingSheet(
      lockOverflowDrag: true,
      snappingPositions: [
        SnappingPosition.factor(
          positionFactor: 0.0,
          snappingCurve: Curves.easeOutExpo,
          snappingDuration: Duration(seconds: 1),
          grabbingContentOffset: GrabbingContentOffset.top,
        ),
        SnappingPosition.factor(
          snappingCurve: Curves.elasticOut,
          snappingDuration: Duration(milliseconds: 1750),
          positionFactor: 0.7,
        ),
        SnappingPosition.factor(
          grabbingContentOffset: GrabbingContentOffset.bottom,
          snappingCurve: Curves.easeInExpo,
          snappingDuration: Duration(seconds: 1),
          positionFactor: 0.95,
        ),
      ],
      grabbing: GrabbingWidget(),
      grabbingHeight: 75,
      sheetBelow: SnappingSheetContent(
          draggable: true,
          childScrollController: listViewController,
          child: CartBag()),
    );
  }
}
