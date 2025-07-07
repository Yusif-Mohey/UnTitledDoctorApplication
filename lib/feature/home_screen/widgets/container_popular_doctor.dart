import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import '../../../core/utils/images_manager.dart';
import '../../../core/widgets/custom_row_star.dart';

class ContainerPopularDoctor extends StatelessWidget {
  const ContainerPopularDoctor({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(ImagesManager.popularDoctor)),
              verticalSpace(10),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Dr. Fillerup Grab',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Medicine Specialist',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    RowStar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
