import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';

class FormulaireReset extends StatefulWidget {
  const FormulaireReset({super.key});

  @override
  State<FormulaireReset> createState() => _FormulaireResetState();
}

class _FormulaireResetState extends State<FormulaireReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : CustomAppBar(),
      body: Center(
        child:Container(
          child: const Column(
            children: [
              
            ],
            ),
        ) ,
        ),
    );
  }
}