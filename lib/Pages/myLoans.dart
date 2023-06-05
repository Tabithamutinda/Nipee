// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import 'package:nipee/AppStuff/appColors.dart';
import 'package:nipee/Pages/MyLoanDetailsScreen.dart';

class MyLoans extends StatefulWidget {
  const MyLoans({super.key});

  @override
  State<MyLoans> createState() => _MyLoansState();
}

class _MyLoansState extends State<MyLoans> {
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
          'My Loans',
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
        padding: const EdgeInsets.only(top: 8.0, left: 24.0, right: 24.0),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: 10.0,
                    right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Loan Request #0011',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 17,
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'ACTIVE',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: AppColors.green,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'KSH 100,000',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Due in 7 days',
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                color: AppColors.subtitle,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                                width:
                                    MediaQuery.of(context).size.height * 0.12,
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.darkGreen),
                                child: MaterialButton(
                                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const MyLoanDetails())),
                                  child: Center(
                                    child: Text(
                                      'Details',
                                      style: GoogleFonts.lato(
                                        fontSize: 16,
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },

          // ListTile(
          //   leading: Container(
          //     width: 50,
          //     height: 50,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(100),
          //         color: AppColors.white),
          //     child: const Icon(Icons.star),
          //   ),
          //   title: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'QWERTYHGGF',
          //         style: GoogleFonts.lato(
          //           fontSize: 14,
          //           color: AppColors.black,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //       Text(
          //         '500.00',
          //         style: GoogleFonts.lato(
          //           fontSize: 14,
          //           color: AppColors.green,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       )
          //     ],
          //   ),
          //   subtitle: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         '24 May 2023',
          //         style: GoogleFonts.lato(
          //           fontSize: 12,
          //           color: AppColors.subtitle,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //       Text(
          //         'Deposit',
          //         style: GoogleFonts.lato(
          //           fontSize: 12,
          //           color: AppColors.darkGreen,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       )
          //     ],
          //   ),
          // );
        ),
      ),
    );
  }
}
