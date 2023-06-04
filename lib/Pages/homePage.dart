import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipee/AppStuff/appColors.dart';
import 'package:nipee/Pages/myLoans.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Hey 👋🏽, Tabby',
                style: GoogleFonts.sourceSansPro(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          _buildLoanCard(),
          const SizedBox(
            height: 20,
          ),
          _buildSelection(),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your transactions',
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'View All',
                      style: GoogleFonts.lato(
                          fontSize: 15,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // controller.open;
                          openTransactionSheet(context);
                        })
                ]))
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          _buildLoanExamples()
        ],
      ),
    );
  }

  _buildLoanCard() {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24),
      child: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Opacity(
              opacity: 0.9,
              child: Container(
                height: 199,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/containerImage.jpeg',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 199.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.darkGreen.withOpacity(0.9),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 187,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.white.withOpacity(0.2)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Current Loan Balance',
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'KES: ${100000}',
                                style: GoogleFonts.lato(
                                  fontSize: 20,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            width: 75,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.white),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/pay.png'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Text(
                                      'Pay',
                                      style: GoogleFonts.lato(
                                        fontSize: 14,
                                        color: AppColors.darkGreen,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Interest earned:',
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Kes ${2500}',
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Due on:',
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ' 07 Feb 2024 ',
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Late Charge:',
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ' Ksh 0.0 ',
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  _buildLoanExamples() {
    return Padding(
      padding: EdgeInsets.only(
          right: 24, left: 24, top: MediaQuery.of(context).size.height * 0.05),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/empty-state.png',
              height: 150,
              width: 150,
            ),
            Text(
              'No transactions yet',
              style: GoogleFonts.lato(
                fontSize: 14,
                color: AppColors.black,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildSelection() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 28,
        left: 28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              width: MediaQuery.of(context).size.height * 0.2,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: MaterialButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pay.png'),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'Request',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          color: AppColors.darkGreen,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Container(
              width: MediaQuery.of(context).size.height * 0.2,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.darkGreen.withOpacity(0.3)),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const MyLoans()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/loan.png',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'My Loans',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          color: AppColors.darkGreen,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }

  void openTransactionSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: AppColors.background,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        isScrollControlled: true,
        useSafeArea: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.2,
                    color: Colors.grey[300], // Color of the top-notch line
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.cancel_sharp)),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Your Transactions',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 16,
                      color: AppColors.darkGreen,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: ListView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        children: List.generate(20, (index) {
                          return ListTile(
                            leading: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.white),
                              child: const Icon(Icons.star),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'QWERTYHGGF',
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '500.00',
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    color: AppColors.green,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '24 May 2023',
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    color: AppColors.subtitle,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Deposit',
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    color: AppColors.darkGreen,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          );
                        })),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
