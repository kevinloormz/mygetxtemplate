import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'initial_controller.dart';

class InitialPage extends GetWidget<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shop'),
      ),
    );
  }
}
