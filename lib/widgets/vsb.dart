import 'package:flutter/material.dart';

import '../utils/app_size.dart';
class VSB extends StatelessWidget {
  const VSB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.WidgetVGAp,
    );
  }
}