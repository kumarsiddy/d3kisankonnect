import 'package:d3kisankonnect/presentation/core/customview/colors.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;

  TitleText(this.text, {this.color, this.fontSize, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 18,
        color: color ?? AppColor.BLACK.color,
      ),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}

class SubTitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;

  SubTitleText(this.text, {this.color, this.fontSize, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 15,
        color: color ?? AppColor.GRAY.color,
      ),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
