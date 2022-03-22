import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web/mobile/mhome/mhcards.dart';
import 'package:web/mobile/mhome/mhproject.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Width & Height
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 11, 11, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(11, 11, 11, 1),
        title: const Text(
          "DEVERIC",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            bgWidget(size),
            TypeWriteText(size),
            skillBox(size),
            const mHomeCards(),
            const MobileHomePortfolio(),
            //Footer
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
    );
  }

  Container skillBox(Size size) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Main Skills",
            style: TextStyle(
              color: Color.fromRGBO(255, 1, 79, 1),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _skillBox(size, 'images/flutter.png'),
                _skillBox(size, 'images/react.png'),
                _skillBox(size, 'images/android.png'),
                _skillBox(size, 'images/java.png'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container bgWidget(Size size) {
    return Container(
      width: size.width,
      height: 200,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
          )),
    );
  }

  Container TypeWriteText(Size size) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello, I'm a",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Web Developer',
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(255, 1, 79, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'App Developer',
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(255, 1, 79, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "Hello, this is Eric. Learned computer science in Seneca college for 2 years with diploma. Now, I am stepping out to the world for becoming a developer with my skills. If you are interesting about me, discover more!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _skillBox(Size _size, String _imageString) {
    return Container(
      width: _size.width * 0.14,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_imageString),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
