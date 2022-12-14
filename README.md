<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
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

```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
#   f i d o o o _ d e v _ f r a m e w o r k  
 