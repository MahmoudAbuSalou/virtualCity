import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import '../Constants/AppColors.dart';

class CoustomTextFaild extends StatefulWidget {
  final String hint, icon;
  var controller;
  CoustomTextFaild({required this.hint, required this.icon,required this.controller});

  @override
  State<CoustomTextFaild> createState() => _CoustomTextFaildState();
}

class _CoustomTextFaildState extends State<CoustomTextFaild> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 6.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(80),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 234, 231, 231),
                  blurRadius: 3,
                  spreadRadius: 3),
            ],
          ),
        ),
        Container(
            height: 6.h,
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                      color: AppColors.white,
                      blurRadius: 2.0,
                      spreadRadius: 0.4)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  isDense: true,
                  counterText: "",
                  hintText: widget.hint,
                  prefixIcon:Padding(
                    padding: EdgeInsets.all(3.w),
                    child:  ImageIcon(
                    AssetImage(
                      widget.icon,
                    ),
                    color: AppColors.primaryColor,
                  )),
                  contentPadding: EdgeInsets.only(top: 3.h),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none)),
              controller: widget.controller,
              textAlign: TextAlign.start,
              maxLines: 1,
              maxLength: 20,
              // controller: _locationNameTextController,
            ))
      ],
    );
  }
}
