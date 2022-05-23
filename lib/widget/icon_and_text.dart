import 'package:flutter/material.dart';
import 'package:flutter_food/utils/dimensions.dart';
import 'package:flutter_food/widget/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget({ Key? key ,
  required this.icon,
  required this.text,
  required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,size: Dimensions.iconSize,),
        const SizedBox(width: 5,),
        SmallText(text: text,),
        
      ],
    );
  }
}