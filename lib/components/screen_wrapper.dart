import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: GestureDetector(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(child: child),
          key: key,
        ),
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }
}
