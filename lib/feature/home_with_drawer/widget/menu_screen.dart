import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';

import '../../../core/utils/images_manager.dart';

class MenuScreen extends StatelessWidget {
  final Function(int) onItemSelected;

  const MenuScreen({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6F7FA1).withOpacity(0.9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // -------------------------- profile info  -------------------------- //
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(ImagesManager.popularDoctor),
                  ),
                  horizontalSpace(AppSize.s10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mahmoud Baioummy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppSize.s16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpace(1),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: AppSize.s15,
                          ),
                          horizontalSpace(AppSize.s5),
                          Text(
                            '+201234567890',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: AppSize.s13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // -------------------------- list of items -------------------------- //
            verticalSpace(AppSize.s50),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('My Doctors', style: TextStyle(color: Colors.white)),
              onTap: () => onItemSelected(0),
            ),
            ListTile(
              leading: Icon(Icons.medication_liquid_sharp, color: Colors.white),
              title: Text(
                'Medical Records',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => onItemSelected(1),
            ),
            ListTile(
              leading: Icon(Icons.payment, color: Colors.white),
              title: Text('Payments ', style: TextStyle(color: Colors.white)),
              onTap: () => onItemSelected(2),
            ),
            ListTile(
              leading: Icon(Icons.medical_services, color: Colors.white),
              title: Text(
                'Medicine Orders',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => onItemSelected(3),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month_outlined, color: Colors.white),
              title: Text(
                'Test Bookings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => onItemSelected(4),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_sharp, color: Colors.white),
              title: Text(
                'Privacy & Policy',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => onItemSelected(5),
            ),
            ListTile(
              leading: Icon(Icons.help_center, color: Colors.white),
              title: Text('Help Center', style: TextStyle(color: Colors.white)),
              onTap: () => onItemSelected(6),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () => onItemSelected(7),
            ),
            verticalSpace(AppSize.s145),
            ListTile(
              leading: Icon(Icons.logout_rounded, color: Colors.white),
              title: Text('Logout', style: TextStyle(color: Colors.white)),
              onTap: () => onItemSelected(8),
            ),
          ],
        ),
      ),
    );
  }
}
