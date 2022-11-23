import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:med_assist/pages/authScreens/phoneVerification.dart';
import 'package:med_assist/pages/otherPages/PatientScreens/patientHomeScreen.dart';
import 'package:med_assist/pages/otherPages/selectionScreen.dart';
import 'package:med_assist/services/providers/RegisterUser.dart';
import 'package:med_assist/services/utils/colors.dart';
import 'package:provider/provider.dart';
import '../../services/models/PatientModels/homeScreenModels/drowerProfileModel.dart';
import 'NameDetailsScreen.dart';

class UserCheck extends StatefulWidget {
  const UserCheck({Key? key, }) : super(key: key);
  @override
  State<UserCheck> createState() => _UserCheckState();
}

class _UserCheckState extends State<UserCheck> {
  splashServices() {
    Timer(
        const Duration(seconds: 20),
            () async {
            Future.delayed(Duration.zero).then((value) {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c)=> const HomeScreen() ), (route) => true);
            });

        }
    );
  }

  @override
  void initState() {
    super.initState();
    print("object");
    print("helo");
    print("hjsdhf");
    print("hjsdhf");
    print("hjsdhf");
    print("hjsdhf");
    print("hjsdhf");
    print("hjsdhf");
    print("hjsdhf");

    splashServices();

  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  ChangeNotifierProvider<RegisterPeramedic> (
      create: (context) => RegisterPeramedic(),
      child: Scaffold(
        backgroundColor: AppColors.kSecondryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: screenHeight * 0.3,
                width: screenWidth * 0.55,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo/logo.png"))),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              const SpinKitCircle(
                  duration: Duration(seconds: 2),
                  size: 60,
                  color: AppColors.kPrimaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
