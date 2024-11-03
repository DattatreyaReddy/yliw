import 'package:flutter/material.dart';

import '../../../common/constants/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.images.yliwNoBg.image(height: 500, width: 500),
      ),
    );
  }
}
