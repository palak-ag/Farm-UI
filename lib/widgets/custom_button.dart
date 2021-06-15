import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 140,
        child: Center(
            child: Text(title,
                style: TextStyle(fontSize: 20, color: Colors.white))),
        decoration: BoxDecoration(
            color: Colors.green[400], borderRadius: BorderRadius.circular(26)),
      ),
    );
  }
}
