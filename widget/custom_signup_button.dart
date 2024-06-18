import 'package:flutter/material.dart';
import 'package:form/utlis/global_Constant.dart';

class CustomSignupButton extends StatelessWidget {
  Function buttonHandler;
  String buttonContent;
  CustomSignupButton({super.key,required this.buttonHandler,required this.buttonContent});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: buttonHandler(),
        style:  GlobalConstant.kbuttonSignupStyle,
        child: Text(buttonContent,style: GlobalConstant.ktextSingupStyle,),
    );
  }
}
