import 'package:coffee_app/config/assets/colors.dart';
import 'package:coffee_app/config/assets/image_path.dart';
import 'package:coffee_app/modules/home/views/home_view.dart';
import 'package:coffee_app/utils/basic_utils.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = BasicUtils.getScreenWidth(context);
    final screenHeight = BasicUtils.getScreenHeight(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 13,
                child: Container(
                  child: Image.asset(
                    onboardingBackground,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child:
              Container(
                width: screenWidth,
                height: screenHeight * 0.4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.1, 0.2, 0.5],
                    colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(1.0),
                  ],
                ),
              )
          ),
          ),
          Positioned(
            bottom: screenHeight * 0.18,
            child:
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                width: screenWidth,
                height: screenHeight * 0.2,
                child: Text('Coffee so good, your taste buds will love it.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.09,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Sora',
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                )
              )
            ),
          Positioned(
            bottom: screenHeight * 0.1,
            child:
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth *0.12),
                width: screenWidth,
                height: screenHeight * 0.1,
                child: Text(
                  'The best grain, the finest roast, the powerful flavor.',
                  style: TextStyle(
                    color: Color(0xFFA9A9A9),
                    fontSize: screenWidth * 0.037,
                    fontFamily: 'Sora',
                  ),
                  textAlign: TextAlign.center,
                )
              )
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: screenHeight * 0.05,
            child: InkWell(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeView(),
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                height: screenHeight * 0.08,
                decoration: BoxDecoration(
                  color: lightbrown,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: darkbrown,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Sora',
                    ),
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