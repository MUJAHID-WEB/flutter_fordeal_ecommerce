

import 'package:flutter/material.dart';

class DividerProductDetails extends StatelessWidget {
  const DividerProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Divider(
        color: Color(0xffF5F5F5),
        thickness: 0.8,
      ),
    );
  }
}