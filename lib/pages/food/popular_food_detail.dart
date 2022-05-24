import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food/utils/colors.dart';
import 'package:flutter_food/utils/dimensions.dart';
import 'package:flutter_food/widget/app_column.dart';
import 'package:flutter_food/widget/app_icon.dart';
import 'package:flutter_food/widget/big_text.dart';
import 'package:flutter_food/widget/expandable_text_widget.dart';
import 'package:flutter_food/widget/icon_and_text.dart';
import 'package:flutter_food/widget/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left:0,
            right:0,
            child: Container(
            width: double.maxFinite,
            height: Dimensions.popularFoodImgaSize,
            decoration: BoxDecoration(
              image: DecorationImage(fit:BoxFit.cover, 
              image: AssetImage("assets/image/foodpanbanner.jpeg"))
            ),
          )),
          Positioned(
            top: Dimensions.height45,
            left:Dimensions.width20,
            right:Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
AppIcon(icon: Icons.arrow_back_ios),
AppIcon(icon: Icons.shopping_cart_outlined)
          ],)),
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImgaSize-20,
            bottom: 0,
            child:Container(
            padding: EdgeInsets.only(left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height20
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.radius20),topLeft: Radius.circular(Dimensions.radius20)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppColumn(text: "Street Food",),
                SizedBox(height: Dimensions.height20,),
                BigText(text: "Introduce"),
                SizedBox(height: Dimensions.height20,),
                Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")))
              ],
            )
          )),
        
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
        bottom: Dimensions.height30,
        left: Dimensions.width20,
        right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,
              bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.iconColor1,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: '0',),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add,color: AppColors.iconColor1,),
                ],
              ),
            ),
            Container(
               padding: EdgeInsets.only(top: Dimensions.height20,
              bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.iconColor2,
              ),
              child: BigText(text: '\$10 | Add to cart',color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}