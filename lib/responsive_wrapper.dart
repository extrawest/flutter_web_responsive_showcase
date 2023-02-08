import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;

  const ResponsiveWrapper({
    required this.desktop,
    required this.mobile,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return sizingInformation.isDesktop ? desktop : mobile;
      },
    );
  }
}
