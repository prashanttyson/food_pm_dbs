import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food/utils/colors.dart';
import 'package:flutter_food/utils/dimensions.dart';
import 'package:flutter_food/widget/big_text.dart';
import 'package:flutter_food/widget/icon_and_text.dart';
import 'package:flutter_food/widget/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: text,size: Dimensions.font26,),
                    SizedBox(height: Dimensions.height10,),
                    Row(children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star,color: AppColors.mainColor,)
                        ),
                      ),
                      SizedBox(width: Dimensions.width10,),
                      SmallText(text: "4.5"),
                      SizedBox(width: Dimensions.width10,),
                      SmallText(text: "1287"),
                      SizedBox(width: Dimensions.width10,),
                      SmallText(text: "Comments"),
                    ],),
                    SizedBox(height: Dimensions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconAndTextWidget(icon: Icons.circle_sharp, text: 'Normal', iconColor: AppColors.iconColor1),
       IconAndTextWidget(icon: Icons.location_on, text: '4km', iconColor: AppColors.mainColor),
      IconAndTextWidget(icon: Icons.access_time_rounded, text: '55min', iconColor: AppColors.iconColor2)
    
    
    ],
                    ),
                  ],
    )
              ;
  }
}