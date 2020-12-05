import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/components/splash_content.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var currentPage = 0;

  var splashData = <Map<String, String>>[
    {
      'text': 'Welcome to Tokyo. Let\'s shop!',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text':
          'We help people connect with store\naround the United State of America',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'We show the easy way to shop.\nJust stay at home with us',
      'image': 'assets/images/splash_3.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                text: splashData[index]['text'],
                image: splashData[index]['image'],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length, (index) => buildDot(index: index)),
                  ),
                  Spacer(flex: 3),
                  DefaultButton(
                    title: 'Continue',
                    onPress: () {},
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: kAnimationDuration,
      width: index == currentPage ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: index == currentPage ? kPrimaryColor : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
