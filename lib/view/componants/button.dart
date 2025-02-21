import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final VoidCallback onTap;
  final Icon? icon;
  final String? image;
  final bool loading;
  final double height;

  const CustomButton({
    super.key,
    required this.title,
    required this.buttonColor,
    required this.onTap,
    this.icon,
    this.image,
    required this.loading, required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: 300,
        decoration: BoxDecoration(
          color: buttonColor,
        ),
        child: Center(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Icon(icon),
            // Image.network(image),

            loading ? Center(child: CircularProgressIndicator()) : Text(title),
          ],
        )),
      ),
    );
  }
}
