

import 'package:flutter/material.dart';

//////// Bottom Sheet Button
class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    super.key,
    required this.name,
    this.onTap,
  });
  final String name;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: Theme.of(context).textTheme.bodyLarge),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 13,
            ),
          ],
        ));
  }
}

