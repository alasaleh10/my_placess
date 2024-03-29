import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:project/core/const.dart';

import 'package:project/core/routers/routers_names.dart';
import 'package:project/feathers/admin/cubit/profile_cubit.dart';
import 'package:project/feathers/auth/widgets/auth_button.dart';
import 'package:project/feathers/profile/user_profile/view/user_profile_child.dart';
import 'package:project/feathers/profile/widgets/profile_stack.dart';
import 'package:project/feathers/profile/widgets/secount_continer.dart';
import 'package:project/feathers/profile/widgets/top_text_profile.dart';
import 'package:project/main.dart';

class UserProfileBodyView extends StatelessWidget {
  const UserProfileBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TopTextProfile(topText: 'User profil'),
          const SizedBox(
            height: 53,
          ),
          ProfileStack(
            onPressedEdite: () {
              BlocProvider.of<ProfileCubit>(context).uploadimage1();
            },
            name: sharedPref.getString('name').toString(),
            email: sharedPref.getString('email').toString(),
          ),
          const SizedBox(
            height: 28,
          ),
          const SecountContinerProflie(
            child: UserProfileChild(),
          ),
          const SizedBox(
            height: 40,
          ),
          AuthButton(
              horizontal: 50,
              onPressed: () {
                sharedPref.clear();
                GoRouter.of(context).pushReplacementNamed(Routers.welocm);
              },
              title: 'Log Out',
              color: whiteColor,
              backgroundColor: primaryColor)
        ],
      ),
    );
  }
}
