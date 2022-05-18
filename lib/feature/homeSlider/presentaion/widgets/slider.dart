

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppAssets.dart';
import '../../data/list_image.dart';




class ItemSlider extends StatelessWidget {
  CarouselSliderController sliderController =  CarouselSliderController();
   ItemSlider({Key? key,required this.list}) : super(key: key);
  var list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselSlider.builder(
        itemCount: list.length,
        slideBuilder:(index){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Container(
                width: 70.w,
                height: 50.h,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Image.asset(list[index],fit: BoxFit.cover,)
            ),
          );
        },

        slideIndicator: CircularSlideIndicator(
          indicatorBorderColor: Colors.grey,
          currentIndicatorColor: Colors.blueAccent,
          indicatorBorderWidth: 2,
        ),
        initialPage: 0,
        unlimitedMode: true,
        controller: sliderController,
      ),
    );
  }
}
