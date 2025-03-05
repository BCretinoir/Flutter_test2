import 'package:coffee_app/config/assets/colors.dart';
import 'package:coffee_app/config/assets/image_path.dart';
import 'package:coffee_app/config/data/coffee_model.dart';
import 'package:coffee_app/utils/basic_utils.dart';
import 'package:coffee_app/utils/widgets/custom_text.dart';
import 'package:coffee_app/modules/home/widgets/coffee_card.dart';
import 'package:coffee_app/modules/home/widgets/home_searchbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [darkbrown, lightbrown],
                    ),
                  ),
                ),
              ),
              Expanded(flex: 6, child: Container(color: Colors.white)),
            ],
          ),
          Positioned(
            top: screenHeight * 0.1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              width: screenWidth,
              height: screenHeight * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText.basic(
                        text: 'Location',
                        fontSize: 12,
                        color: Color(0xFFA9A9A9),
                      ),
                      CustomText.basic(
                        text: '1 rue Dargent, Rouen',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  Container(
                    width: screenWidth * 0.15,
                    height: screenWidth * 0.15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(profilImage),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top:
                screenHeight *
                0.2, 
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: HomeSearchbar(),
          ),
          Positioned(
            top: screenHeight * 0.3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              width: screenWidth * 0.8,
              height: screenHeight * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bannerImage),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth * 0.2,
                    height: screenHeight * 0.04,
                    decoration: BoxDecoration(
                      color: Color(0xFFED5151),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CustomText.basic(
                        text: 'Promo',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CustomText.basic(
                    text: 'Buy one get \n one FREE',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.51,
            child: SizedBox(
              height: screenHeight * 0.05,
              width: screenWidth,
              child: ListView.builder(
                itemCount: coffee_type.length,
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.3,
                    margin: EdgeInsets.only(left: screenWidth * 0.03),
                    decoration: BoxDecoration(
                      color: lightbrown.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFFE5E5E5), width: 1),
                    ),
                    child: Center(
                      child: CustomText.basic(
                        text: coffee_type[index],
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.amber,
              height: screenHeight * 0.42,
              width: screenWidth,
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.05,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: SizedBox(
              width: screenWidth,
              height: screenHeight * 0.35,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: screenWidth * 0.05,
                childAspectRatio: 0.61,
                mainAxisSpacing: screenHeight * 0.02,
                children:
                    coffeeItemList
                        .map(
                          (item) => CoffeeCard(
                            title: item.name,
                            description: item.description,
                            imagePath: item.imagePath,
                            price: item.price,
                          ),
                        )
                        .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
