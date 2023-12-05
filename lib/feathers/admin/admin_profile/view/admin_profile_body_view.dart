import 'package:flutter/material.dart';
import 'package:project/core/const.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/admin/admin_profile/view/adimin_profile_child.dart';
import 'package:project/feathers/profile/widgets/profile_stack.dart';
import 'package:project/feathers/profile/widgets/secount_continer.dart';
import 'package:project/feathers/profile/widgets/top_text_profile.dart';

class AdminProfileBodyView extends StatelessWidget {
  const AdminProfileBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
      child: Column(
        children: [
          const TopTextProfile(topText: 'Adimn profile'),
          const SizedBox(
            height: 53,
          ),
          ProfileStack(
            haveImage: true,
            onPressedEdite: () {},
            name: 'Amal Ali',
            email: 'Admin1@gmail.com',
          ),
          const SizedBox(
            height: 28,
          ),
          const SecountContinerProflie(
            child: AdimnProfileChild(),
          ),
          const SizedBox(
            height: 60,
          ),
          AuthButton(
              onPressed: () {},
              title: 'Log Out',
              color: whiteColor,
              backgroundColor: primaryColor)
        ],
      ),
    );
  }
}