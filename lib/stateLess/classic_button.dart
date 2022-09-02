import 'package:flutter/material.dart';
class GradientButton extends StatelessWidget {
  final double? width;
  final double? height;

  final Color gradientColor1;
  final Color gradientColor2;

  final Widget? child;
  final VoidCallback? onTap;

  const GradientButton(
      {Key? key,
      this.width,
      this.height,
      required this.gradientColor1,
      required this.gradientColor2,
      this.child,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: <Color>[gradientColor1, gradientColor2])),
          child: child),
    );
  }
}
class SquareGradientButton extends StatelessWidget {
  final double? edge;
  final double? radidus;

  final Color gradientColor1;
  final Color gradientColor2;

  final Widget? child;
  final VoidCallback? onTap;
  const SquareGradientButton(
      {Key? key,
      this.edge,
      this.radidus,
      required this.gradientColor1,
      required this.gradientColor2,
      this.child,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(radidus!),
    
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: edge,
          width: edge,
          decoration: BoxDecoration(
             
              borderRadius: BorderRadius.circular(radidus!),
              gradient: LinearGradient(
                  colors: <Color>[gradientColor1, gradientColor2])),
          child: child,
        ));
  }
}
