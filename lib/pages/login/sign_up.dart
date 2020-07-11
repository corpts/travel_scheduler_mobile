import 'package:flutter/material.dart';
import 'package:travel_scheduler/ext/color.dart' as ext;

class SignUpPage extends StatefulWidget{


  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 300.0, end: 50.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
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
                'NEXT',
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
                                    onTap: () {},
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
                          "We need some\n information about you",
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
                padding: const EdgeInsets.fromLTRB(24, 48, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      style: TextStyle(
                          fontSize: 22,
                          color: ext.ColorProvider.blackDark
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                          border: InputBorder.none,
                          hintText: "What's you name?",
                          hintStyle: TextStyle(
                            fontSize: 22,
                            color: ext.ColorProvider.blackDark
                          )
                      ),
                    ),
                    Text(
                      'YOU NAME',
                      style: TextStyle(
                          fontSize: 14,
                          color: ext.ColorProvider.redLight
                      ),
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
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "What's you second name?"
                    ),
                  ),
                  Text('YOU SECOND NAME'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your Email"
                    ),
                  ),
                  Text('YOU EMAIL'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}