import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
import '../widgets/cart_details_doctor.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Doctor Details',
          style: TextStyle(
            fontSize: 22,
            color: ColorManager.whit,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(children: [CartDetailsDoctor()]),
    );
  }
}
