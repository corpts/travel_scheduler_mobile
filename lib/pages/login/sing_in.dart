import 'package:flutter/material.dart';

import 'package:travel_scheduler/ext/text_style.dart';
import 'package:travel_scheduler/ext/color.dart' as ext;

class SignInPage extends StatefulWidget{
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: true,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 34),
            child: MaterialButton(
              onPressed: (){},
              child: Text(
                  'LOGIN',
                  textAlign: TextAlign.center,
                  style: TextStyleLib.singUpButtonTS
              ),
            ),
          ),
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
//              physics: const NeverScrollableScrollPhysics(),
//              primary: false,
              children: [
                Column(
                  children: [
                    // Top bar
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Icon(
                                      Icons.arrow_back,
                                      size: 53,
                                      color: ext.ColorProvider.redLight,
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    customBorder: CircleBorder(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                                "Sign In",
                                textAlign: TextAlign.center,
                                style: TextStyleLib.header1TS
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          )
                        ],
                      ),
                    ),
                    SignUpFields(),
                  ],
                ),
              ],
            ),
          ),
        ),
//        Container(
//          child: Image(
//              image: AssetImage("assets/login_signup.png"),
//              color: Color.fromRGBO(255, 255, 255, 0.5),
//              colorBlendMode: BlendMode.modulate,
//              height: double.infinity,
//              width: double.infinity,
//              fit: BoxFit.cover
//          ),
//        )
      ],
    );
  }
}

class SignUpFields extends StatefulWidget{
  final TextEditingController nameController;
  final TextEditingController sNameController;
  final TextEditingController emailController;

  const SignUpFields({
    Key key,
    this.nameController,
    this.sNameController,
    this.emailController
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => SignUpFieldsState();

}

class SignUpFieldsState extends State<SignUpFields>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 48, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      style: TextStyleLib.inputTextTs,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                          hintText: "Enter your Email",
                          hintStyle: TextStyleLib.inputHintTS
                      ),
                    ),
                    Text(
                        'YOU EMAIL',
                        style: TextStyleLib.hintTS
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    style: TextStyleLib.inputTextTs,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your Password",
                        hintStyle: TextStyleLib.inputHintTS
                    ),
                  ),
                  Text(
                    'YOUR PASSWORD',
                    style: TextStyleLib.hintTS,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}