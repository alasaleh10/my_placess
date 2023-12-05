import 'package:flutter/material.dart';

class CustomDropMenuButton extends StatelessWidget {
  const CustomDropMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .8,
        child: DropdownButton(
            isExpanded: true,
            borderRadius: BorderRadius.circular(20),
            value: 2,
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
            ],
            onChanged: (value) {
           
            }),
      ),
    );
  }
}