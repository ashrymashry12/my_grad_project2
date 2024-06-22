import 'package:flutter/material.dart';

void main() {
  runApp(const FaceAimScreen());
}

class FaceAimScreen extends StatelessWidget {
  const FaceAimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 430,
            height: 932,
            margin:const EdgeInsets.only(top: 63),
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
                        "تحديد سلوك الوجه",
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
                                child:const Text(
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
                      child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                                        "image_app/charm_face-smile.png",
                                        
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
                          color:const Color.fromRGBO(227, 244, 243, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                ),
                          ]
                      ),
                      child: const Text(
                    'الفوائد من برنامج تحديد سلوك الشخص بناءً على تعابير الوجه :\n\n'
                    '1. تحسين جودة الخدمة والتفاعل مع العملاء:\n'
                    '   - يمكن للبرنامج تحليل تعابير وجه العملاء لتحديد مشاعرهم أثناء التفاعل مع خدمة العملاء، مما يساعد الموظفين على تعديل استجاباتهم وتقديم خدمة أفضل.\n\n'
                    '2. تعزيز التعليم والتعلم :\n'
                    '   - يمكن استخدام البرنامج في الفصول الدراسية أو منصات التعلم الإلكتروني لمراقبة انتباه الطلاب وتفاعلهم، مما يسمح للمعلمين بتعديل أساليب التدريس بناءً على ردود فعل الطلاب.\n\n'
                    '3. تقديم الرعاية الصحية النفسية :\n'
                    '   - يمكن للبرنامج مراقبة الحالة النفسية للمرضى بشكل مستمر، مما يساعد الأطباء والمعالجين في التعرف على علامات الاكتئاب أو القلق وتقديم الدعم المناسب في الوقت المناسب.\n\n'
                    '4. تحسين تجربة المستخدم في التطبيقات الذكية :\n'
                    '   - يمكن للبرنامج تحليل تعابير وجه المستخدمين في تطبيقات مثل الألعاب أو تطبيقات الترفيه لتقديم محتوى مخصص يتناسب مع حالتهم المزاجية، مما يزيد من رضاهم وتجربتهم الشخصية.\n\n'
                    '5. تعزيز الأمان والمراقبة :\n'
                    '   - يمكن للبرنامج استخدامه في أنظمة الأمان لتحديد السلوكيات المشبوهة أو العدوانية من خلال تحليل تعابير وجه الأفراد في الأماكن العامة، مما يساعد في اتخاذ إجراءات سريعة للحفاظ على الأمن.\n\n',
                    
                    style: TextStyle(fontFamily: 'Cairo',color: Color(0xFF000000), fontSize: 11, fontWeight: FontWeight.bold, height: 1.87),
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
                                Navigator.pushNamed(context, '/face_setting');
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
