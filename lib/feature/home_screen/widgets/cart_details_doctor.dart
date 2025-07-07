import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
// import '../../../core/utils/color_manager.dart' hide ColorManager;
import '../../../core/utils/images_manager.dart';
import '../../../core/utils/value_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_row_star.dart';
import '../views/appointment_screen.dart';
import 'custom_details_column_text.dart';
import 'custom_row_services_text.dart';

class CartDetailsDoctor extends StatelessWidget {
  const CartDetailsDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(18),
      color: ColorManager.whit,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 87,
                width: 92,
                child: Image.asset(ImagesManager.popularDoctor),
              ),
              horizontalSpace(AppSize.s10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Dr. John Doe',
                        style: TextStyle(
                          fontSize: 18,
                          color: ColorManager.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      horizontalSpace(80),
                      Icon(Icons.favorite, color: ColorManager.red),
                    ],
                  ),
                  Text(
                    'Specialist Cardiologist',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Row(
                    children: [
                      RowStar(),
                      horizontalSpace(100),
                      Text(
                        '\$',
                        style: TextStyle(
                          color: ColorManager.primaryColor,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '28.00/hr',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(10),
          CustomButton(
            title: 'Book Now',
            color: ColorManager.primaryColor,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CustomDateTimePicker()),
              );
            },
            height: 37,
          ),
          verticalSpace(35),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: DetailsColumnText(title: '100', suptitel: 'Runing'),
              ),
              horizontalSpace(40),
              DetailsColumnText(title: '500', suptitel: 'Ongoing'),
              horizontalSpace(40),
              DetailsColumnText(title: '700', suptitel: 'Patient'),
            ],
          ),
          verticalSpace(20),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'Services',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              verticalSpace(10),
              CustomRowServicesText(
                num: '1.',
                text: 'Patient care should be the number one priority.',
              ),
              verticalSpace(10),
              CustomRowServicesText(
                num: '2.',
                text: 'If you run your practiceyou know how frustrating.',
              ),
              verticalSpace(10),
              CustomRowServicesText(
                num: '3.',
                text: 'That’s why some of appointment reminder system.',
              ),
            ],
          ),
          verticalSpace(20),
          Image.asset(ImagesManager.map, fit: BoxFit.fill),
        ],
      ),
    );
  }
}
