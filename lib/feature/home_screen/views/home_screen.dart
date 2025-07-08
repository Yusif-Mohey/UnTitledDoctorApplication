import 'package:flutter/material.dart';
// import 'package:untitleddoctor/core/utils/color_manager.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';
import '../widgets/container_popular_doctor.dart';
import '../widgets/feature_doctor_container.dart';
import '../widgets/find_doctor_cart.dart';
// import '../widgets/live_list_body.dart';
import '../widgets/medical_categories.dart';
import '../widgets/row_titel.dart';
import 'doctor_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FindDoctorCart(),
              verticalSpace(AppSize.s40),
              // Padding(
              //   padding: const EdgeInsets.only(left: AppPadding.p23),
              //   child: Text(
              //     'Live Doctors',
              //     style: TextStyle(
              //       color: ColorManager.black,
              //       fontSize: AppSize.s20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // verticalSpace(AppSize.s10),
              // SizedBox(
              //   height: AppSize.s145,
              //   child: ListView.separated(
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) => LiveListBody(),
              //     itemCount: 5,
              //     separatorBuilder: (context, index) => SizedBox(),
              //   ),
              // ),
              // verticalSpace(AppSize.s15),
              SizedBox(height: AppSize.s120, child: MedicalCategories()),
              verticalSpace(AppSize.s15),
              RowTitel(text: 'Popular Doctor'),
              SizedBox(
                height: AppSize.s320,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) => ContainerPopularDoctor(
                        onTap:
                            () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DoctorDetailsScreen(),
                              ),
                            ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(),
                  itemCount: 3,
                ),
              ),
              verticalSpace(AppSize.s2),
              RowTitel(text: 'Feature Doctor'),
              SizedBox(
                height: AppSize.s180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => FeatureDoctorContainer(),
                  separatorBuilder: (context, index) => SizedBox(),
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
