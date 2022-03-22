import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Width & Height
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.625,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _customCardPC(
            size,
            Icon(
              Icons.web,
              size: 50,
              color: Color.fromRGBO(255, 1, 79, 1),
            ),
            'In mordern world, most of companies and people need website for themselves. I can help that with my skills with mordern style. Using powerful skills as a React or Flutter.',
          ),
          _customCardPC(
            size,
            Icon(
              Icons.phone_android,
              size: 50,
              color: Color.fromRGBO(255, 1, 79, 1),
            ),
            'If you are seeking a mobile application developer, that should be a me. I am using cross platform language as a Flutter. Also, this website developed with Flutter',
          ),
        ],
      ),
    );
  }

  Container _customCardPC(Size _size, Icon _icon, String _text) {
    return Container(
      width: _size.width * 0.3,
      height: 250,
      child: Neumorphic(
        padding: const EdgeInsets.all(20),
        style: const NeumorphicStyle(
          color: Color.fromRGBO(11, 11, 11, 1),
          shadowLightColor: Color.fromRGBO(31, 31, 31, 1),
          shadowDarkColor: Colors.black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _icon,
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Text(
                _text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
