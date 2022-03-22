import 'package:flutter/material.dart';

class MobileHomePortfolio extends StatelessWidget {
  const MobileHomePortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "PORTFOLIO",
              style: TextStyle(
                color: Color.fromRGBO(255, 1, 79, 1),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _customPortfolioCard('https://cdn.pixabay.com/photo/2016/09/11/05/34/whatsapp-interface-1660652_960_720.png'),
                    _customPortfolioCard('https://cdn.pixabay.com/photo/2016/09/11/05/34/whatsapp-interface-1660652_960_720.png'),
                    _customPortfolioCard('https://cdn.pixabay.com/photo/2016/09/11/05/34/whatsapp-interface-1660652_960_720.png'),
                    _customPortfolioCard('https://cdn.pixabay.com/photo/2016/09/11/05/34/whatsapp-interface-1660652_960_720.png'),
                    _customPortfolioCard('https://cdn.pixabay.com/photo/2016/09/11/05/34/whatsapp-interface-1660652_960_720.png'),
                    _customPortfolioCard('https://cdn.pixabay.com/photo/2016/09/11/05/34/whatsapp-interface-1660652_960_720.png'),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Container _customPortfolioCard(String _image) {
    return Container(
      width: 300,
      height: 200,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(_image),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
