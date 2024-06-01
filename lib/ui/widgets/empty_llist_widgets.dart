import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/size_config.dart';

class EmptyLlistWidgets extends StatelessWidget {
  const EmptyLlistWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/lotties/empty_list.json",
              width: SizeConfig.screenWidth!/1.37,
              height: SizeConfig.screenHeight!/2.81
            ),
            Text(
              "Empty List!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
