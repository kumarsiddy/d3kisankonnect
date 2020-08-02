import 'package:d3kisankonnect/presentation/core/customview/colors.dart';
import 'package:flutter/material.dart';

class CustomScreenBg extends StatelessWidget {
  final String title;
  final Widget body;

  CustomScreenBg(this.title, this.body);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: AppColor.SNOW_WHITE.color,
      body: SingleChildScrollView(child: body),
      resizeToAvoidBottomInset: true,
    );
  }
}
