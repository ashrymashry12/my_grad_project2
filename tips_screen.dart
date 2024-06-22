import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TipsScreeen());

}

class TipsScreeen extends StatelessWidget {
  const TipsScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:const Color.fromRGBO(116, 207, 200, 1),
          title:  Center(
            child: Container(
              margin:const EdgeInsets.only(top:25,bottom: 25,left: 9,right: 9),
              
              child:const Text('التوجيهات',style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/select_use_screen');
              },
              icon: const Icon(Icons.arrow_back_ios,color: Colors.blue,),
            ),
            
          ],
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // GestureDetector(
              //   onTap: (){
              //      Navigator.pushNamed(context, '/select_use_screen');
              //   },
              //   child:Container(
              //     width: 398,
              //     height: 67,
              //     decoration: const BoxDecoration(
              //       color:Color.fromRGBO(116, 207, 200, 1),
              //   ),
              //     child:const Center(child: Text('لوحة التحكم',
              //     style: TextStyle(color: Colors.white,fontSize: 20),)),
              //   ),
              // ),
              
              GestureDetector(
                onTap: (){
                   Navigator.pushNamed(context, '/driving_aim');
                },
                child:Container(
                  width: 398,
                  height: 67,
                  decoration: const BoxDecoration(
                    color:Color.fromRGBO(116, 207, 200, 1),
                ),
                  child:const Center(child: Text('الهدف من التنبية أثناء القيادة',
                  style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),

              GestureDetector(
                onTap: (){
                   Navigator.pushNamed(context, '/driving_seting');
                },
                child:Container(
                 width: 398,
                 height: 67,
                  decoration: const BoxDecoration(
                    color:Color.fromRGBO(116, 207, 200, 1),
                ),
                  child:const Center(child: Text('إعدادات التنبية أثناء القيادة',
                  style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),

              GestureDetector(
                onTap: (){
                   Navigator.pushNamed(context, '/face_aim');
                },
                child:Container(
                  width: 398,
                  height: 67,
                  decoration: const BoxDecoration(
                    color:Color.fromRGBO(116, 207, 200, 1),
                ),
                  child:const Center(child: Text('الهدف من تحليل الوجة',
                  style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),

              GestureDetector(
                onTap: (){
                   Navigator.pushNamed(context, '/face_setting');
                },
                child:Container(
                  width: 398,
                  height: 67,
                  decoration: const BoxDecoration(
                    color:Color.fromRGBO(116, 207, 200, 1),
                ),
                  child:const Center(child: Text('إعدادات تحليل الوجة',
                  style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),

              // GestureDetector(
              //   onTap: (){
              //      Navigator.pushNamed(context, '/camera_d_screen');
              //   },
              //   child:Container(
              //     width: 120,
              //     height: 50,
              //     decoration: const BoxDecoration(
              //       color:Color.fromRGBO(116, 207, 200, 1),
              //   ),
              //     child:const Center(child: Text('تخطي',
              //     style: TextStyle(color: Colors.white,fontSize: 20),)),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}