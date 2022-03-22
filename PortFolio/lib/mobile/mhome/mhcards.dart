import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class mHomeCards extends StatelessWidget {
  const mHomeCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Width & Height
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _customCard(
            size,
            const Icon(Icons.web, color: Color.fromRGBO(255, 1, 79, 1), size: 30),
            'In mordern world, most of companies and people need website for themselves. I can help that with my skills with mordern style. Using powerful skills as a React or Flutter.',
          ),
          const SizedBox(height: 30),
           _customCard(
            size,
            const Icon(Icons.phone_android, color: Color.fromRGBO(255, 1, 79, 1), size: 30),
            'If you are seeking a mobile application developer, that should be a me. I am using cross platform language as a Flutter. Also, this website developed with Flutter',
          ),
        ],
      ),
    );
  }

  Container _customCard(Size _size, Icon _icon, String _text) {
    return Container(
      width: _size.width,
      height: 200,
      child: Neumorphic(
        style: NeumorphicStyle(
          color: Color.fromARGB(31, 31, 31, 1),
          shadowLightColor: Color.fromARGB(71, 71, 71, 1),
          shadowDarkColor: Colors.black,
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _icon,
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                _text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
