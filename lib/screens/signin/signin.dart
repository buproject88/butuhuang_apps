import 'package:butuhuang_app/animations/FadeAnimation.dart';
import 'package:butuhuang_app/constant.dart';
import 'package:butuhuang_app/screens/signin/components/bg.header.dart';
import 'package:butuhuang_app/screens/signin/components/button.login.dart';
import 'package:butuhuang_app/screens/signin/components/button.login.google.dart';
import 'package:butuhuang_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

import '../../size.config.dart';
import '../../toast.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passController;
  TextEditingController _emailControlle;
  String _email, _pass;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    void _toggle() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

    return Scaffold(
      backgroundColor: grey,
      body: Stack(
        children: [
          BackgroundHeading(),
          SafeArea(
            child: SizedBox.expand(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size * 2.5, right: size * 2.5, bottom: size * 1),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: size * 3,
                      ),
                      FadeAnimation(
                        0.5,
                        SizedBox(
                          height: size * 13,
                          width: size * 13,
                          child: Image.asset('assets/images/logo_biru.png'),
                        ),
                      ),
                      SizedBox(
                        height: size * 2,
                      ),
                      FadeAnimation(
                        0.8,
                        Text(
                          '${Constant.textHello}',
                          style: TextStyle(
                              color: grey,
                              fontWeight: FontWeight.w900,
                              fontSize: size * 2.2),
                        ),
                      ),
                      FadeAnimation(
                        0.8,
                        Text(
                          '${Constant.textTitleSignIn}',
                          style: TextStyle(
                              color: grey,
                              fontWeight: FontWeight.bold,
                              fontSize: size * 1.6),
                        ),
                      ),
                      SizedBox(
                        height: size * 2,
                      ),
                      FadeAnimation(
                        1.2,
                        Container(
                          height: size * 33,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: size * 2.0),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                  ),
                                ),
                                TextField(
                                  controller: _passController,
                                  obscureText: _obscureText,
                                  onChanged: (value) {
                                    setState(() {
                                      _pass = value;
                                    });
                                  },
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    suffixIcon: IconButton(
                                        icon: Icon(_obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                        onPressed: _toggle),
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: () => print("Go to forgot password"),
                                    child: Text(
                                      'Forgot password?',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size * 2,
                                ),
                                ButtonLogin(
                                  onTap: () => print("Action Login"),
                                ),
                                SizedBox(
                                  height: size * .5,
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'OR',
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                SizedBox(
                                  height: size * .5,
                                ),
                                ButtonLoginGoogle(
                                  onTap: () => print("Login Google Action"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size * 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('${Constant.textDontHaveAcc}'),
                          SizedBox(
                            width: size * .5,
                          ),
                          InkWell(
                              onTap: () => print("Go to register screen"),
                              child: Text(
                                '${Constant.textRegisterNow}',
                                style: TextStyle(
                                    color: blue, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
