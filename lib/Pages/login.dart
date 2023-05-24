import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipee/AppStuff/appColors.dart';
import 'package:nipee/Pages/bottomNavBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static var phone = TextEditingController();
  static var pinController = TextEditingController();
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Image.asset(
              'assets/images/profile.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: FormBuilder(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Text(
                    'Welcome to Nipee',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(
                    'Phone number',
                    style: GoogleFonts.lato(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
                  child: FormBuilderTextField(
                    controller: phone,
                    name: 'phone',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number to login';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.borderOutline, width: 1.0),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Enter your phone number',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Text(
                    'Pin',
                    style: GoogleFonts.lato(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
                  child: FormBuilderTextField(
                    controller: pinController,
                    name: 'password',
                    obscureText: isHidden,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your pin to login';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppColors.borderOutline, width: 1.0),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: '****',
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          isHidden ? Icons.visibility : Icons.visibility_off,
                          color: AppColors.highlight.withOpacity(0.7),
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24, top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text('Forgot pin?',
                            style: GoogleFonts.lato(
                              color: AppColors.highlight,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(8)),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const BottomNavBar()));
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Center(
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Don\'t have an account? ',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                        text: 'Register',
                        style: GoogleFonts.lato(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Tapped!'))
                  ])),
                )
              ],
            ),
          ),
        ));
  }

  void _togglePasswordView() {
    setState(() {
      isHidden = !isHidden;
    });
  }
}
