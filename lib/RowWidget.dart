import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key, this.children = const []});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: children,
    );
  }
}
