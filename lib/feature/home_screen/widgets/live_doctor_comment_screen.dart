import 'package:flutter/material.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/feature/home_screen/widgets/comment_build.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/images_manager.dart';
import '../../../core/utils/value_manager.dart';

class LiveDoctorCommentScreen extends StatelessWidget {
  const LiveDoctorCommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: AppSize.s40,
                  width: AppSize.s40,
                  decoration: BoxDecoration(
                    color: ColorManager.whit,
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppSize.s12),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  maxRadius: 23,
                  backgroundImage: AssetImage(ImagesManager.popularDoctor),
                ),
              ],
            ),
            Spacer(),
            Container(
              constraints: BoxConstraints(maxHeight: 300, maxWidth: 400),
              child: ListView.separated(
                itemBuilder: (context, index) => CommentBuild(),
                separatorBuilder:
                    (context, index) => verticalSpace(AppSize.s15),
                itemCount: 4,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: ColorManager.whit,
                filled: true,
                hintText: 'Add Comment....',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: ColorManager.primaryColor,
                    child: Image.asset(ImagesManager.chat, fit: BoxFit.cover),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: AppPadding.p16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
