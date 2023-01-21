import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:aasan_medication/pages/authScreens/phoneVerification.dart';
import 'package:aasan_medication/pages/otherPages/PatientScreens/patientHomeScreen.dart';
import 'package:aasan_medication/pages/otherPages/selectionScreen.dart';
import 'package:aasan_medication/services/providers/RegisterUser.dart';
import 'package:aasan_medication/services/utils/colors.dart';
import 'package:provider/provider.dart';
import '../../services/models/PatientModels/homeScreenModels/drowerProfileModel.dart';
import 'NameDetailsScreen.dart';

class ReturnToHomeScreen extends StatefulWidget {
  const ReturnToHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ReturnToHomeScreen> createState() => _ReturnToHomeScreenState();
}

class _ReturnToHomeScreenState extends State<ReturnToHomeScreen> {
  splashServices() {
    Timer(
      const Duration(seconds: 4),
      () async {
        Future.delayed(Duration.zero).then(
          (value) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (c) => const HomeScreen()),
                (route) => true);
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    splashServices();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.kSecondryColor,
      body: Center(
        child: Container(
          height: screenHeight * 0.3,
          width: screenWidth * 0.55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo/logo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
