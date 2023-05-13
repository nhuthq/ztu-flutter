import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatelessWidget {
  final double width;
  final double height;
  const CustomCircularIndicator({super.key, this.height = 32, this.width = 32});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            Colors.black,
          ),
        ),
      ),
    );
  }
}
