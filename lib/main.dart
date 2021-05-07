import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(Yemeek());
}

class Yemeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yemeek",
      home: OnBoardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  Widget _buildImage(String assetName) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image(
        image: AssetImage("assets/$assetName.png"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w700,
          fontSize: 28.0,
        ),
        bodyTextStyle: TextStyle(fontSize: 19, color: Colors.black),
        contentPadding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        pageColor: Colors.yellow,
        imagePadding: EdgeInsets.all(20));

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Yemeek ile\n Ne Yediğini Bil",
          body:
              "Hangi işletme kaç puan almış ?\n Ücretler ne kadar gerçek ?\nGerçekten temiz mi ? \nHepsi bu uygulamada...",
          image: _buildImage("1"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Yemeek ile\n Ne Yediğini Bil",
          body:
              "Çevrende bulunan kayıtlı işletmelere kolayca eriş\n Kim neye kaç puan vermiş gör",
          image: _buildImage("5"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Yemeek ile\n Ne Yediğini Bil",
          body:
              "İşletme sahiplerine ayrıcalıklı tanıtımlar\nGüncel fiyat ve kampanya bilgileri\nİşletmeler için reklam alanları",
          image: _buildImage("2"),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Yemeek ile\n Ne Yediğini Bil",
            body:
                "Süpriz ile karşılaşmazsın !\nÇevrende popüler olan lezzetlerden haberin olur !\nÇevrende bulunan işletmeleri filtreleyerek seçim yapabilirsin...",
            image: _buildImage("3"),
            decoration: pageDecoration,
            footer: Padding(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 7,
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(0, 3)),
                        ]),
                    child: Center(
                        child: Text("Kayıt ol",
                            style: TextStyle(color: Colors.white))),
                  ),
                ))),
      ],
      onDone: () => null,
      showSkipButton: true,
      skip: Text("Atla"),
      showNextButton: true,
      done: Text(
        "Tamam",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      next: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(image: AssetImage("assets/4.png"), scale: 10),
        ),
      ),
      skipFlex: 0,
      nextFlex: 0,
    );
  }
}
