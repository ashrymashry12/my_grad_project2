import 'package:flutter/material.dart';

void main() {
  runApp(const FaceSettingScreen());
}

class FaceSettingScreen extends StatelessWidget {
  const FaceSettingScreen({super.key});

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
                                  "إعدادات ",
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
                      child:SizedBox(
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
                  'للحصول على أفضل نتائج من برنامج تحديد سلوك الوجه باستخدام '
                  'الكاميرا، يمكنك اتباع هذه الاقتراحات:\r\n\r\n'
                  '1. التثبيت الصحيح للكاميرا :\r\n'
                  '   - وضع الكاميرا في مكان مناسب مع ضبط الارتفاع والزاوية لضمان رؤية واضحة لوجه المستخدم.\r\n\r\n'
                  'الإضاءة الجيدة :\r\n'
                  '   - توفير إضاءة مناسبة ومتوازنة حول الكاميرا لتجنب الظلال والتباين الحاد.\r\n\r\n'
                  '3. الصيانة الدورية للكاميرا :\r\n'
                  '   - تنظيف العدسة بانتظام وتحديث البرامج والتعريفات لضمان أفضل أداء.\r\n\r\n'
                  '4. ضبط إعدادات البرنامج والكاميرا :\r\n'
                  '   - ضبط الإعدادات والمعايرة الدورية لضمان دقة التعرف على تعابير الوجه.\r\n\r\n'
                  '5. إدارة التخزين والبيانات :\r\n'
                  '   - تأمين مكان التخزين واستخدام التخزين السحابي المأمن للحفاظ على البيانات وحمايتها.\r\n\n',
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
                                Navigator.pushNamed(context, '/camera_b_screen');
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