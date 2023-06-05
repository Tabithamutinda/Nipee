// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import 'package:nipee/AppStuff/appColors.dart';

class ReviewLoanApplication extends StatefulWidget {
  const ReviewLoanApplication({super.key});

  @override
  State<ReviewLoanApplication> createState() => _ReviewLoanApplicationState();
}

class _ReviewLoanApplicationState extends State<ReviewLoanApplication> {
  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          top: MediaQuery.of(context).size.height * 0.09,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.darkGreen.withOpacity(0.3)),
                        child: const Icon(Icons.star),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        'Loan Request',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 17,
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Loan Purpose',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'School Fees',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: AppColors.subtitle,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Loan Amount',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'KSH 2000',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: AppColors.subtitle,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Loan Duration',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '2 months',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: AppColors.subtitle,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    
             Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.green),
                      child: MaterialButton(
                        onPressed: () => Navigator.pop(context),
                        child: Center(
                          child: Text(
                            'Edit Details',
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )),
                      const SizedBox(height: 10,),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.darkGreen),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'Apply',
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )),
          ],
        ),
        
      ),
    );
  }
}
