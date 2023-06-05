// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import 'package:nipee/AppStuff/appColors.dart';
import 'package:nipee/Pages/reviewLoanApplication.dart';

class RequestLoan extends StatefulWidget {
  const RequestLoan({super.key});

  @override
  State<RequestLoan> createState() => _RequestLoanState();
}

class _RequestLoanState extends State<RequestLoan> {
  static var amount = TextEditingController();
  static var loanTerm = TextEditingController();
  static var purpose = TextEditingController();

  @override
  void dispose() {
    // amount.dispose();
    // loanTerm.dispose();
    // purpose.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Request Loan',
          style: GoogleFonts.sourceSansPro(
            fontSize: 18,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Loan Purpose',
                  style: GoogleFonts.lato(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
                child: FormBuilderTextField(
                  controller: purpose,
                  name: 'purpose',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter loan purpose';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.borderOutline, width: 1.0),
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Enter loan purpose',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Loan Amount',
                  style: GoogleFonts.lato(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
                child: FormBuilderTextField(
                  controller: amount,
                  name: 'amount',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter loan amount';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.borderOutline, width: 1.0),
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Enter loan amount',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Loan Duration',
                  style: GoogleFonts.lato(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
                child: FormBuilderTextField(
                  controller: loanTerm,
                  name: 'loanTerm',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter loan duration';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.borderOutline, width: 1.0),
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Enter loan duration',
                  ),
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
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) => const ReviewLoanApplication())),
                    child: Text(
                      'Next',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
