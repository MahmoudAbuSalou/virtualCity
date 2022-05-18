import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppAssets.dart';
import 'package:virtual_city/core/Constants/AppColors.dart';
import 'package:virtual_city/core/Constants/AppStyle.dart';
import 'package:virtual_city/core/util/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:virtual_city/core/widget/appBarWidget.dart';
import 'package:virtual_city/core/widget/drawer.dart';
import 'package:virtual_city/core/widget/svgIcon.dart';
import 'package:virtual_city/feature/main/presentation/widgets/cardItem.dart';

import 'package:virtual_city/feature/contact/presentation/pages/contact.dart';
import 'package:virtual_city/feature/usermangment/presentation/pages/loginScreen.dart';

import '../../../splash/presentation/pages/splashScreen.dart';
import '../../../usermangment/presentation/pages/singupScreen.dart';
import '../widgets/myListTile.dart';
import '../widgets/youtubeWidget.dart';

class HomePage extends StatelessWidget {

   HomePage({Key? key}) : super(key: key);

bool isLogin=AppSharedPreferences.hasToken;
List Cards=[
  CardItem(image: AppAssets.gymBuild, subTitle: 'نادي رياضي', desc: 'نادي مزود بكافة األجهزة و برامج رياضية جاهزة تستطيع اختيارها وممارستها أو وضع البرنامج الذي يناسبك.'),
  CardItem(image: AppAssets.fashionBuild, subTitle: 'مبنى الموضى', desc: 'فيها مختلف الأزياء والموضة تستطيع اختيار نمط المالبس التي تناسبك وتجريبها قبل شرائها.'),
  CardItem(image: AppAssets.creativeBuild, subTitle: 'مبنى المواهب', desc: 'في هذا المبنى تستطيع أن تمارس مواهبك وتنميتها وعرضها على باقي المستخدمين وأخذ الآراء فيها.'),
  CardItem(image: AppAssets.hairBuild, subTitle: 'مبنى تصفيف الشعر', desc: 'فيها مختلف الأزياء والموضة تستطيع اختيار نمط المالبس التي تناسبك وتجريبها قبل شرائها.'),
  CardItem(image: AppAssets.restaurantBuild, subTitle: 'مبنى المطاعم', desc: 'تستطيع اختيار وجباتك أو إعطاء وصفات من اختيارك لتجريبها من قبل مستخدمين آخرين.'),
];
  @override
  Widget build(BuildContext context) {
    return Container(

   margin: EdgeInsets.symmetric(horizontal: 2.w),
      decoration:  const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.background),
          fit: BoxFit.cover,

        ),

      ),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(child:Image.asset(AppAssets.iconPosition),
              top: 60.h,
              right: -40,

            ),
            Column(
              children: [

                SizedBox(height: 2.h,),
                YoutubeWidget(initialVideoId: 'qzQ67ztFAbU'),
                SizedBox(height: 2.h,),
                Text('احجز شقتك الآن ',style: AppStyle.titleStyle,),
                SizedBox(height: 2.h,),
                Image.asset(AppAssets.city),
                SizedBox(height: 2.h,),

                Text('من نحن ',style: AppStyle.titleStyle,),
                SizedBox(height: 2.h,),
                Container(
                    height: 30.h,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: Text('في وقت يرتفع فيه الطلب على السلع والخدمات المرتبطة في العالم الافتراضي نوفر لكم مدينة ليست من الخيال إنما من واقع نسجناه على الشبكة العنكبوتية لا تختلف عن المدن الواقعية في مضمونها، تحاكي هذه المدينة كل متطلبات زوارها من تسوق عبر المحال التجارية الموجودة فيها إلى نواٍد رياضية إضافة لتأمين بيئة مناسبة لإقامة الاجتماعات حتى الحصول على شهادات مصدقة من جامعاتها، يستطيع مستخدميها ممارسة نشاطات حياتهم بكل حرية والتجول ضمن شوارعها كل هذا دون مغادرة منزلهم الواقعي، نحن نقدم استثمارا آمناً  لشراء عقارات وتأجيرها حتى توريثها للأبناء، ً مشروعنا سيخدم كافة شرائح المجتمع، تعالوا معنا إلى مدينة المستقبل.',
                        style: AppStyle.paragraphStyle,textDirection: TextDirection.rtl,textAlign: TextAlign.center,

                      ),
                    )),
                Text('مبانينا ',style: AppStyle.titleStyle,),
                Container(


                  child: ListView.builder(itemBuilder: (context, index) =>Cards[index],
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                )

              ],
            ),
          ],
        ),
      ),
    );

  }
}
