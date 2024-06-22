import 'package:flutter/material.dart';

void main() {
  runApp(
    const DrivingAimScreen(),
  );
}

class DrivingAimScreen extends StatelessWidget {
  const DrivingAimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 430,
            height: 932,
            margin: const EdgeInsets.only(top: 63),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 370,
                      margin: const EdgeInsets.only(left: 30, right: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.teal[300],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(1, 1),
                                blurRadius: 3) //offset ..Creates a box shadow.
                          ]),
                      child: const Text(
                        "التنبيه أثناء القيادة",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 168,
                      height: 30,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 230),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromRGBO(84, 172, 166, 1),
                          width: 2,
                        ),
                      ),
                      child: const Text(
                        "الهدف من",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 18, left: 7),
                      height: 85,
                      width: 85,                   
                      decoration: BoxDecoration(
                          color: Colors.teal[50],
                          borderRadius: BorderRadius.circular(100)),
                      child:
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                                        "image_app/Vector.png",
                                        
                                      ),
                        ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 655,
                      width: 398,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(227, 244, 243, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ]),
                      child: const Text(
                        '1. الحفاظ على السلامة الشخصية :\n'
                        '    يساعد البرنامج في تنبيه السائق فورًا إذا بدأ في النعاس أو النوم، مما يتيح له فرصة التوقف وأخذ قسط من الراحة، وبالتالي يحمي نفسه من التعرض للحوادث الخطيرة.\n\n'
                        '2. حماية الركاب والمارة :\n'
                        '    بالإضافة إلى حماية السائق، يسهم البرنامج في حماية الركاب داخل السيارة والمارة على الطريق من الحوادث الناتجة عن فقدان السيطرة أثناء القيادة.\n\n'
                        '3. تقليل الحوادث المرورية :\n'
                        '    يسهم استخدام مثل هذا البرنامج في تقليل معدل الحوادث المرورية الناتجة عن النوم أثناء القيادة، مما يساهم في تحسين السلامة العامة على الطرق.\n\n'
                        '4. التشجيع على القيادة الواعية :\n'
                        '    من خلال تنبيه السائق بشكل مستمر عند ظهور علامات النعاس، يعزز البرنامج مفهوم القيادة الواعية والمسؤولة، ويشجع السائقين على أخذ فترات راحة منتظمة.\n\n'
                        '5. دعم الصحة العامة :\n'
                        '    النوم أثناء القيادة ليس فقط خطرًا على الطرق، بل يمكن أن يكون مؤشرًا على عدم الحصول على قسط كافٍ من النوم. يساعد البرنامج السائقين في التعرف على حاجتهم للنوم والراحة، مما يدعم صحتهم العامة والوقاية من التعب المزمن.\n\n'
                        'بشكل عام، يعمل هذا البرنامج كأداة وقائية فعالة تساهم في تحسين السلامة على الطرق وتعزيز الصحة العامة والوعي لدى السائقين.',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Color(0xFF000000),
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            height: 1.87),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                      top: 610,
                      child: SizedBox(
                        width:398,
                        height:67,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/tips_screen');
                              },
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(84, 172, 166, 1),
                                ),
                                child: const Center(
                                    child: Text(
                                  'رجوع',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/driving_seting');
                              },
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(84, 172, 166, 1),
                                ),
                                child: const Center(
                                    child: Text(
                                  'تخطي',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
