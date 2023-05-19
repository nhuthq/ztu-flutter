import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const CustomCircularIndicator(
      {super.key,
      this.height = 32,
      this.width = 32,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            color,
          ),
        ),
      ),
    );
  }
}
