// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:nipee/AppStuff/appColors.dart';
import 'package:nipee/Pages/homePage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late String id;
  static var mobileNoController = TextEditingController();
  static var firstNameController = TextEditingController();
  static var lastNameController = TextEditingController();
  static var externalController = TextEditingController();
  final format = DateFormat("dd-mm-yyyy");

  String? validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
        backgroundColor: AppColors.background,
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
                  'Setup personal account',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Register to get loans today',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'First name',
                          style: GoogleFonts.lato(
                            color: AppColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: FormBuilderTextField(
                            controller: firstNameController,
                            name: 'firstname',
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'First name can\'t be empty';
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.borderOutline, width: 1.0),
                              ),
                              hintText: 'Enter first name',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Last name',
                          style: GoogleFonts.lato(
                            color: AppColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: FormBuilderTextField(
                            controller: lastNameController,
                            name: 'lastname',
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Last name can\'t be empty';
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.borderOutline, width: 1.0),
                              ),
                              hintText: 'Enter last name',
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'ID number',
                  style: GoogleFonts.lato(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
                child: SizedBox(
                  child: FormBuilderTextField(
                    controller: externalController,
                    name: 'externalId',
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'ID number can\'t be empty';
                      if (value.length < 8) return 'Too short';
                      return null;
                    },
                    maxLength: 8,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.borderOutline, width: 1.0),
                      ),
                      hintText: 'Enter your ID number',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
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
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
                child: SizedBox(
                  child: FormBuilderTextField(
                    controller: mobileNoController,
                    name: 'mobileNo',
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Phone number can\'t be empty';
                      if (value.isNotEmpty) return validateMobile(value);
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.borderOutline, width: 1.0),
                      ),
                      hintText: 'Enter your phone number',
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text.rich(
                  TextSpan(
                      text: 'By registering,you\u0027re agreeing to our ',
                      style: GoogleFonts.lato(
                        color: AppColors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            text: 'Terms & Conditions ',
                            style: GoogleFonts.inter(
                              color: AppColors.darkGreen.withOpacity(0.6),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(
                            text: 'and ',
                            style: GoogleFonts.lato(
                              color: AppColors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            text: 'Privacy Policy',
                            style: GoogleFonts.lato(
                              color: AppColors.darkGreen.withOpacity(0.6),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(
                            text: ' ✅',
                            style: GoogleFonts.lato(
                              color: AppColors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                      ]),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Center(
                child: Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                      color: AppColors.darkGreen,
                      borderRadius: BorderRadius.circular(100)),
                  child: MaterialButton(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const HomePage()));
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.white,
                        size: 40,
                      )),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  'Next',
                  style: GoogleFonts.lato(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
