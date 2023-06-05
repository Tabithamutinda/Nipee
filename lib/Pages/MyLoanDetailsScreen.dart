import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipee/AppStuff/appColors.dart';

class MyLoanDetails extends StatefulWidget {
  const MyLoanDetails({super.key});

  @override
  State<MyLoanDetails> createState() => _MyLoanDetailsState();
}

class _MyLoanDetailsState extends State<MyLoanDetails> {
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
          'Loan Details',
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.height * 0.2,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.darkGreen),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'View Payments',
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.height * 0.2,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.green),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'Pay Loan',
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
            floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          top: MediaQuery.of(context).size.height * 0.09,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
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
                        'Loan Request #0011',
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
                          'Status',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'ACTIVE',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: AppColors.green,
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
                          'Paid Amount',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'KSH 20000',
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
                          'Loan Balance',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'KSH 80000',
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
                          'Due Date',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '25 July 2023',
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
                          'Interest Earned',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'KSH 500',
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
                          'Late Charge',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'KSH 1000',
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
          ],
        ),
        
      ),
    );
  }
}
