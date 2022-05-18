import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppColors.dart';
import 'package:virtual_city/feature/main/presentation/pages/homepage.dart';

import 'package:virtual_city/feature/homeSlider/presentaion/pages/home_slider.dart';
import 'package:virtual_city/feature/main/presentation/widgets/IconOfNavigationBar.dart';

import '../../../../core/Constants/AppAssets.dart';
import '../../../../core/Constants/AppStyle.dart';
import '../../../../core/widget/appBarWidget.dart';
import '../../../../core/widget/drawer.dart';
import '../../../contact/presentation/pages/contact.dart';

class MainPage extends StatefulWidget {
   MainPage({Key? key,required this.tabIndex}) : super(key: key);

  int tabIndex ;


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{


  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();
  late TabController tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: scafoldKey,
      bottomNavigationBar:
      CurvedNavigationBar(

        backgroundColor: AppColors.primaryColor,
        index: widget.tabIndex,

        items: <Widget>[
          IconBar(label: 'مبانينا', icon: AppAssets.home2),
          IconBar(label: ' الرئيسية', icon: AppAssets.home),
          IconBar(label: 'تواصل معنا', icon: AppAssets.phone1),


        ],



        onTap: (v) {

          widget.tabIndex = v;
          tabController.animateTo(v);
          setState(() {});
        },
      ),

appBar: PreferredSize(
    preferredSize: const Size.fromHeight(60.0),
    child: AppBarWidget(scafold: scafoldKey,),
    ),
      body: IndexedStack(
       index: widget.tabIndex,

        children: [

          HomeSlider(),
          HomePage(),
          ContactPage(page: false),
        ],
      ),
      endDrawer: MyDrawer(),

    );
  }
}
