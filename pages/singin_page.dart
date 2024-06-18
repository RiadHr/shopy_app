import 'package:flutter/material.dart';
import 'package:form/pages/signup_page.dart';
import 'package:form/utlis/global_Constant.dart';
import 'package:form/utlis/input_validators.dart';
import 'package:form/widget/custom_form_field.dart';


class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("SignIn",style: GlobalConstant.ktextSingupHeaderStyle,),
              Column(
                children: [
                  CustomFormField(
                    hint: "email",
                    inputFormater: GlobalConstant.inputFormaterEmailField,
                    validator: (value) {
                      if(value!.isEmpty && value.isEmailValid){
                        return "enter a valid input";
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  CustomFormField(
                    hint: "password",
                    validator: (value) {
                       if(value!.isNotEmpty ){
                         return " enter a valid password";
                       }
                    },
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      style:GlobalConstant.kbuttonSignupStyle ,
                      onPressed: (){},
                      child: const Text("SignIn",style: GlobalConstant.ktextSingupStyle,)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("if you have an account you can "),
                      TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder:(context) => const SignupPage(),));
                          },
                          child: const Text("SignUp",style: GlobalConstant.ktextSingupTextStyle,)
                      )
                    ],)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
