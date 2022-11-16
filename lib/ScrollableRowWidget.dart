import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScrollableRowWidget extends StatelessWidget {
  ScrollableRowWidget({super.key, this.children = const []});

  List<Widget> children = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: children),
    );
  }
}
