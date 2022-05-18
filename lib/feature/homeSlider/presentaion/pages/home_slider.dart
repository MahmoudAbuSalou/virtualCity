
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtual_city/core/Constants/AppAssets.dart';

import '../../../../core/widget/appBarWidget.dart';
import '../../../../core/widget/drawer.dart';
import '../../data/list_image.dart';
import '../widgets/Epanded_text.dart';
import '../widgets/slider.dart';

class HomeSlider extends StatelessWidget {

   HomeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: double.infinity,
        height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppAssets.background,),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 0.h, right: 4.w, left: 4.w),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Stack(
                children: [
                  Positioned(child:Image.asset(AppAssets.iconPosition),
                    top: -75,
                    right: 0,

                  ),
                  Column(
                    children: [
                        //correct
                      ExpandedText(title: 'نادي رياضي',textDesc:"  للرياضة دور محوري في الحفاظ على صحتنا العقلية والجسدية والنفسية، إن كنت ممن لا يمارسون الرياضة لتعرف كيف ستتغير حياتك إلى الأفضل يمكنك زيارة مركزنا الرياضي لتمارس كافة أنواع األنشطة الرياضيةالمناسبة لاهتماماتك ورغباتك حيث سوف تجد نادي مزود بكافة الأجهزةالمتطورة بالإضافة إلى برامج رياضية جاهزة ومعّدة بإتقان تستطيع اختيارها مثلما تشاء وفق نظام مناسب لبنيتك الجسدية أو بإمكانك وضع النظام الرياضي الذي تريده.",),
                      SizedBox(height: 3.h),
                      ItemSlider(list: imagesGym),
                        //correct
                      ExpandedText(title: 'المطاعم ',textDesc: 'ألن الطعام من أكثر الأشياء الممتعة والمهمة في حياتنا لذلك قمنا بإنشاء مطعم يتيح لمستخدمينا تجربة مختلف أصناف الطعام المشهورة كالطعام الإيطالي والصيني بما فيه من مأكولات بحرية عالية الجودة والأطعمة السريعة إضافة إلى تذوق مأكولات المطبخ العربي المعروفة بلذتها كما يمكنك ابتكار وصفات من اختيارك وعرضها على القائمة لتجربتها من قبل مستخدمين آخرين',),
                      SizedBox(height: 3.h),
                      ItemSlider(list: imagesRes),

                      ExpandedText(title: 'مبنى الموضى',textDesc: 'تظهر أناقة الإنسان من أزيائه، فالموضة والأزياء تأخذ جزءاً كبيراً في أذهان الناس وتعطي الإنطباع الأولي على شخصية الإنسان الذي يرتديها فهو عالم واسع تطور عبر السنين ليصبح من أهم العوالم في وقتنا هذا لذلك كان من المهم تجهيز مدينتا بمركز أزياء ضخم يحتوي على أحدث صيحات الموضة المناسبة لكافة الأعمار فيه تستطيع مشاهدة كافة أنماط الملابس و تجريبها واختيار الأنسب لك قبل شرائها ',),
                      SizedBox(height: 3.h),
                      ItemSlider(list: imagesFashion),
                  //correct
                  ExpandedText(title: 'مبنى تصميم الشعر',textDesc: ' كل إنسان يسعى للحصول على أسمى درجة من الجمال ولأن الشعر جزأ لا يتجزأ من جمالنا الخارجي ومن المهم جدا المحافظة عليه زودنا مدينتنا بمركز مخصص للاهتمام بالشعر نملك فيه اختيارات متعددة من مستحضرات ذات جودة عالية للعناية به ولكن قبل اختيار واستخدام أي مستحضر أو اعتماد أي تسريحة يجب أن نكون على دراية بنوع شعرنا وطبيعته وما يناسبنا وهذا ما تم مراعاته بمركزنا حيث يمكنك تجريب تسريحات الشعر بمختلف الألوان واألشكال وأخذ تعليمات ونصائح من قبل مختصين في هذا المجال لتظهر بأبهى صورة ممكنة',),
                  SizedBox(height: 3.h),
                      ItemSlider(list: imagesHair),
                      //correcr
                      ExpandedText(title: ' مبنى المواهب',textDesc: 'لكل إنسان موهبة بالحياة قد يكتشفها أو يكتسبها بالتجارب والمحاولات وإن كانت لديه تلك الموهبة بالفعل يحاول ويتدرب على تنميتها وتطويرها إلى أفضل حالاتها بالإضافة إلى أن الكثير من المواهب تعد مصدرا للدخل ًوانطلاقا من ذلك وفرنا في مدينتنا مبنى يدعم المواهب حيث يمكنك ًاستعراض موهبتك أو تنميتها وفق برامج خاصة ومجهزة وعرضها على باقي المستخدمين وأخذ الآراء فيها كما يمكنك مشاهدة مواهب الآخرين والاستمتاع بها.',),
                      SizedBox(height: 3.h),
                      ItemSlider(list: imagesTalents),

                  ],
                  ),
                ],
              ),
            ),
          ),
        );



  }
}
