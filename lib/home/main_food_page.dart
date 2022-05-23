
import 'package:flutter/material.dart';
import 'package:flutter_food/home/food_page_body.dart';
import 'package:flutter_food/utils/colors.dart';
import 'package:flutter_food/utils/dimensions.dart';
import 'package:flutter_food/widget/big_text.dart';

import '../widget/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({ Key? key }) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height" +MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
            padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Column(
                
                children: [
                  BigText(text: 'India',color: AppColors.mainColor,size: 30,),
                  Row(
                    children: [
                      SmallText(text:'Varanasi',color: Colors.black54,),
                      Icon(Icons.arrow_drop_down_rounded)
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.mainColor,
                ),        
               child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search,size: Dimensions.iconSize,),
                ),
              )
                ],
              ),
            )
          ),
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      )
    );
  }
}