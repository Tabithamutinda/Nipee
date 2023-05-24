import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipee/AppStuff/appColors.dart';

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
            Padding(
              padding: const EdgeInsets.only(right: 24, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Your loans',
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
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
                                  Image.asset('assets/images/adding.png'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Text(
                                      'Top up',
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        color: AppColors.darkGreen,
                                        fontWeight: FontWeight.w500,
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
                      children: [
                        Image.asset('assets/images/upward.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Kes: ${2500}, Interest earned',
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
      padding: EdgeInsets.only(right: 24, left: 24, top: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          Image.asset('assets/images/empty-state.png',height: 150,width: 150,),
          Text('No loans applied yet',
          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                          ),
          )
        ],
      ),
    );
  }
}
