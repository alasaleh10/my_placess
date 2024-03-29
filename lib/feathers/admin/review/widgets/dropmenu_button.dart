import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/feathers/admin/review/cubit/approving_cubit.dart';

class CustomDropMenuButton extends StatelessWidget {
  const CustomDropMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    var cuibt = BlocProvider.of<ApprovingCubit>(context);

    return BlocBuilder<ApprovingCubit, ApprovingState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child: DropdownButton(
                isExpanded: true,
                borderRadius: BorderRadius.circular(20),
                value: BlocProvider.of<ApprovingCubit>(context).value,
                hint: const Text('Select Categorie'),
                items: const [
                  DropdownMenuItem(
                    value: 1,
                    child: Text('Natural Landscape'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('Museums &Monuments'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('Shopping'),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text('Restaurants & cafes'),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text('Current Events'),
                  ),
                ],
                onChanged: (val) {
                  cuibt.changeCategorie(val!);
                }),
          ),
        );
      },
    );
  }
}
