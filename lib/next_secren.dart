import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  final Widget mobile;
  final Widget tablat;
  final Widget desktop;
  final Widget smart;
  const Next(
      {super.key,
      required this.mobile,
      required this.tablat,
      required this.desktop,
      required this.smart});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth>=1200){
        return desktop;
      }else if (constraints.maxWidth>=800){
        return tablat??mobile ;
      }else if (constraints.maxWidth>400){
        return smart ;
      }else {
        return mobile??smart ;
      }
    });
  }
}
