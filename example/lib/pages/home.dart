import 'package:fidooo_dev_framework/custom_widgets/custom_button.dart';
import 'package:fidooo_dev_framework/custom_widgets/custom_container.dart';
import 'package:fidooo_dev_framework/constants/app_constants.dart';
import 'package:fidooo_dev_framework/constants/size_constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FRaisedButton(child: const Text("Hola"), onPressed: () {}),
          const SizedBox(height: SizeConstants.margin),
          const FContainer(
            color: FColors.apieBusiness,
            borderRadius: 5,
            child: Text("Fidooo dev"),
          )
        ],
      ),
    );
  }
}
