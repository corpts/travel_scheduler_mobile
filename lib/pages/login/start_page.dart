import 'package:flutter/material.dart';
import 'package:travel_scheduler/ext/text_style.dart';
import 'package:travel_scheduler/ext/color.dart' as ext;
import 'package:travel_scheduler/pages/login/sign_up.dart';
import 'package:travel_scheduler/pages/login/sing_in.dart';

class StartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: ext.ColorProvider.whiteLight,
          body: Center(
            child: Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/backgroundmountain.png"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.bottomCenter
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 280,
                      )
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          width: double.infinity,
                          // botom box btns
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.0),
                                topRight: Radius.circular(24.0)
                            ),
                            color: ext.ColorProvider.bluePrimary
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40.0,38.0,40.0,18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // SING IN BTN
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 9),
                                  child: Container(
                                    width: double.infinity,
                                    height: 64,
                                    child: MaterialButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => SignInPage())
                                        );
                                      },
                                      child: Text('SING IN',
                                        style: TextStyleLib.buttonWhiteTS
                                      ),
                                      color: ext.ColorProvider.redPrimary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7.0)
                                      ),
                                    ),
                                  ),
                                ),
                                // SING UP BTN
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 9),
                                  child: Container(
                                    width: double.infinity,
                                    height: 64,
                                    child: MaterialButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => SignUpPage())
                                        );
                                      },
                                      child: Text('CREATE ACCOUNT',
                                        style: TextStyleLib.buttonBlackTS
                                      ),
                                      color: Color.fromRGBO(255, 255, 255, 0.75),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7.0)
                                      ),
                                    ),
                                  ),
                                ),
                                // Auth using google or facebook
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 9),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      MaterialButton(
                                        shape: CircleBorder(),
                                        child: Image.asset("assets/GoogleLogo.png", height: 40),
                                        height: 72,
                                        color: Colors.white,
                                        onPressed: () {  },
                                      ),
                                      MaterialButton(
                                        shape: CircleBorder(),
                                        child: Image.asset("assets/faceBookIcon.png", height: 40),
                                        color: Colors.white,
                                        height: 72,
                                        onPressed: () {  },
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
//        Container(
//          child: Image(
//            image: AssetImage("assets/login.png"),
//            color: Color.fromRGBO(255, 255, 255, 0.1),
//            colorBlendMode: BlendMode.modulate,
//            height: double.infinity,
//            width: double.infinity,
//            fit: BoxFit.cover
//          ),
//        )
      ]
    );
  }
}