import 'package:flutter/material.dart';
class IndexedDivider extends StatelessWidget {
  final int itemCount;
  final int index;

  IndexedDivider({required this.itemCount, required this.index});

  @override
  Widget build(BuildContext context) {
    if (index < itemCount - 1) {
      return Divider(
        color: Colors.black,
        height: 2,
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
