import 'package:flutter/material.dart';
import 'package:travel_scheduler/ext/color.dart' as ext;

class SignUpPassPage extends StatefulWidget{
  @override
  _SignUpPassPageState createState() => _SignUpPassPageState();
}

class _SignUpPassPageState extends State<SignUpPassPage> {
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
                'FINISH',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ext.ColorProvider.redPrimary,
                    fontSize: 26
                ),
              ),
            ),
          ),
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
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
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 52
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          )
                        ],
                      ),
                    ),
                    // Lable
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        "Create your password\nto identify you",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ),
                    // Inputs
                    SignUpFields(),
                  ],
                ),
              ],
            ),
          ),
        ),
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
              padding: const EdgeInsets.fromLTRB(32, 66, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    style: TextStyle(
                      fontSize: 24,
                      color: ext.ColorProvider.blackDark,
                    ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        isDense: true,
                        border: InputBorder.none,
                        hintText: "Enter your Password",
                        hintStyle: TextStyle(
                            fontSize: 22,
                            color: ext.ColorProvider.blackDark
                        )
                    ),
                  ),
                  Text(
                    'YOU PASSWORD',
                    style: TextStyle(
                        fontSize: 14,
                        color: ext.ColorProvider.redLight
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 80, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    style: TextStyle(
                      fontSize: 24,
                      color: ext.ColorProvider.blackDark,
                    ),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        isDense: true,
                        border: InputBorder.none,
                        hintText: "Confirm your Password",
                        hintStyle: TextStyle(
                            fontSize: 22,
                            color: ext.ColorProvider.blackDark
                        )
                    ),
                  ),
                  Text(
                    'CONFIRM PASSWORD ',
                    style: TextStyle(
                        fontSize: 14,
                        color: ext.ColorProvider.redLight
                    ),
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