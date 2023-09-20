import 'package:flutter/material.dart';

class ButtonWithBg extends StatelessWidget {
  const ButtonWithBg({
    super.key, required this.btnName, required this.onPress,
  });

  final String btnName;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          backgroundColor: Color(0xffcb3233)),
      child: Text(
        btnName,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith( color: Colors.white),
      ),
    );
  }
}









