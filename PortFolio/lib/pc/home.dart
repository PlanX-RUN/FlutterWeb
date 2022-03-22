import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:web/mobile/mhome/mhcards.dart';
import 'package:web/mobile/mhome/mhproject.dart';
import 'package:web/pc/home/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Width & Height
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 11, 11, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(11, 11, 11, 1),
        centerTitle: true,
        title: const Text(
          "DEVERIC",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "GitHub",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "LinkedIn",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Others",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mainCards(size),
              HomeCard(),
              Container(
                width: size.width * 0.625,
                child: MobileHomePortfolio(),
              ),
              Container(
                width: size.width,
                height: 100,
                margin: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "© 2022.All Right Reserved by Eric",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container mainCards(Size size) {
    return Container(
      width: size.width * 0.625,
      height: 500,
      child: Row(
        children: [
          Container(
            width: size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello, I'M a",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Web Developer',
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(255, 1, 79, 1),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                    TypewriterAnimatedText(
                      'App Developer',
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(255, 1, 79, 1),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                ),
                Container(
                  width: size.width * 0.3,
                  margin: const EdgeInsets.only(top: 50),
                  child: const Text(
                    "Hello, this is Eric. Learned computer science in Seneca college for 2 years with diploma. Now, I am stepping out to the world for becoming a developer with my skills. If you are interesting about me, discover more!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Main Skills",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              _customSkillBox("images/flutter.png"),
                              _customSkillBox("images/react.png"),
                              _customSkillBox("images/android.png"),
                              _customSkillBox("images/java.png"),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: size.width * 0.225,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bg.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _customSkillBox(String _image) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(left: 20),
      child: Neumorphic(
        padding: EdgeInsets.all(10),
        child: Image(
          image: AssetImage(_image),
        ),
        style: NeumorphicStyle(
          color: Color.fromRGBO(31, 31, 31, 1),
          shadowLightColor: Color.fromRGBO(71, 71, 71, 1),
          shadowDarkColor: Color.fromRGBO(31, 31, 21, 1),
        ),
      ),
    );
  }
}
