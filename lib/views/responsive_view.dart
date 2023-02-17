import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveView extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveView({
    required this.mobile,
    required this.desktop,
    Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
