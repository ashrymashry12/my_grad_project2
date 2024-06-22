import 'package:flutter/material.dart';
import 'package:flutter_application_grad_app/screens/camera_d_screen.dart';
import 'package:flutter_application_grad_app/screens/driving_aim.dart';
import 'package:flutter_application_grad_app/screens/driving_seting.dart';
import 'package:flutter_application_grad_app/screens/face_aim.dart';
import 'package:flutter_application_grad_app/screens/face_setting.dart';
import 'package:flutter_application_grad_app/screens/select_use_screen.dart';
import 'package:flutter_application_grad_app/screens/tips_screen.dart';
import 'package:flutter_application_grad_app/screens/camera_b_screen.dart';

//import 'camera_screen.dart';

abstract class Routs {
  static MaterialPageRoute? materialPageRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/select_use_screen':
        return MaterialPageRoute(builder: (context) => const SelectUseScreen());
      case '/tips_screen':
        return MaterialPageRoute(builder: (context) => const TipsScreeen());
      case '/camera_b_screen':
        return MaterialPageRoute(builder: (context) => const CameraScreenB());
      case '/camera_d_screen':
        return MaterialPageRoute(builder: (context) => const CameraScreenD());
      case '/face_setting':
        return MaterialPageRoute(builder: (context) => const FaceSettingScreen());
      case '/face_aim':
        return MaterialPageRoute(builder: (context) => const FaceAimScreen());
      case '/driving_aim':
        return MaterialPageRoute(builder: (context) => const DrivingAimScreen());
        case '/driving_seting':
        return MaterialPageRoute(builder: (context) => const DrivingSettingScreen());
      
      
    }
    return null;
  }
}
