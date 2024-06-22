import 'package:flutter/material.dart';

void main() {
  runApp(const DrivingSettingScreen());
}

class DrivingSettingScreen extends StatelessWidget {
  const DrivingSettingScreen({super.key});

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
                      child:  SizedBox(
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
                          color:const Color.fromRGBO(227, 244, 243, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                ),
                          ]
                      ),
                      child: const Text(
                      'للاستفادة القصوى من برنامج التنبيه عند النوم أثناء القيادة وتثبيت الكاميرا بشكل فعال، يمكن اتباع النصائح الأساسية التالية:\n\n'
                      '1. التأكد من التثبيت الصحيح للكاميرا :\n'
                      '    يجب تثبيت الكاميرا في مكان مناسب داخل السيارة '
                      'بحيث تكون موجهة مباشرة نحو وجه السائق. يفضل وضعها على الزجاج الأمامي أو على لوحة القيادة بحيث تضمن تغطية واضحة للسائق دون أي عوائق.\n\n'
                      '2. التحقق من عمل البرنامج والكاميرا بشكل دوري :\n'
                      '    من الضروري التأكد بشكل دوري من أن الكاميرا والبرنامج يعملان بكفاءة. يمكن القيام بذلك من خلال فحص الكاميرا والتأكد من أن البرنامج '
                      'يتعرف على وجه السائق بشكل صحيح ويصدر التنبيهات عند الحاجة.\n\n'
                      '3. ضبط إعدادات التنبيه بشكل مناسب :\n'
                      '    يجب ضبط إعدادات الصوت ومستوى الحساسية في البرنامج بما يتناسب مع تفضيلات السائق والبيئة المحيطة. يمكن تعيين مستوى صوت التنبيه بحيث يكون '
                      'عالياً ومزعجاً بما يكفي لإيقاظ السائق دون أن يكون مفرط الإزعاج.\n\n'
                      '4. دمج استخدام البرنامج مع عادات القيادة الآمنة :\n'
                      '    يُفضل دمج استخدام البرنامج مع عادات القيادة الآمنة مثل أخذ فترات راحة منتظمة، والتوقف عند الشعور بالتعب أو النعاس، والحرص على النوم الجيد قبل القيادة '
                      'لمسافات طويلة. البرنامج أداة مساعدة وليس بديلاً عن القيادة الحذرة والواعية.\n\n'
                      'باتباع هذه النصائح، يمكن للسائقين تحقيق أكبر قدر من الاستفادة من برنامج التنبيه عند النوم أثناء القيادة، مما يعزز سلامتهم وسلامة الآخرين على الطريق.',
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
                                Navigator.pushNamed(context, '/camera_d_screen');
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