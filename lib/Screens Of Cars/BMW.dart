import 'package:cars/models/GesterModelCar.dart';
import 'package:flutter/material.dart';

class Bmw extends StatelessWidget {
  const Bmw({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () => Navigator.of(context).pop(),
            ),
            title: SizedBox(
                width: 80,
                child: Text('انواع السيارات',style: TextStyle(fontFamily: 'ibmB',fontSize: 14,color: Colors.white),)),
            centerTitle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),

          ),
          body: ListView(
          children: [
            GestCarModel(img1: "https://cdn.jdpower.com/ArticleImages/2019%20BMW%203%20Series%20Sport%20Line%20P90323707_highRes_730.jpg",
                txt1: 'بي ام دبليو 2016',
                txt2: 'تجسّدBMW الفئة الخامسة صالون مثالاً رائعاً عن سيارات الصالون العصرية لرجال الأعمال والفضل يعود إلى المظهر الديناميكي والأناقة العفوية. فهذه السيارة تلبي كل ما هو متوقع من سيارةٍ بنفس الفئة: لمساتٌ رياضيٌة متألقة ومتعة القيادة المدعومة بتقنيات مبتكرة.')
          ],
          ),
        ),
      ),
    );
  }
}
