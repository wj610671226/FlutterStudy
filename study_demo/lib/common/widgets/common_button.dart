import 'package:flutter/material.dart';


const Color _defaultBackgroundColor = Colors.white;
const TextStyle _defaultTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 18);

class CommonButton extends StatelessWidget {

  final Color backgroundColor;
  final double radius;
  final double width;
  final double height;
  final TextStyle titleStyle;
  final String title;
  final GestureTapCallback onTap;

  const CommonButton({
    Key key,
    this.title,
    this.backgroundColor = _defaultBackgroundColor,
    this.radius = 5.0,
    this.titleStyle = _defaultTextStyle,
    this.onTap,
    this.width = 360,
    this.height = 50
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: this.backgroundColor,
            borderRadius: BorderRadius.circular(this.radius)
        ),
        alignment: Alignment.center,
        height: this.height,
        width: this.width,
        child: Text(this.title, style: this.titleStyle,),
      ),
      onTap: (() {
        if (this.onTap != null) {
          this.onTap();
        }
      }),
    );
  }
}
