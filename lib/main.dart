// main.dart

import 'package:dindefterimv2/Sorular/soru_cevap.dart';
import 'package:flutter/material.dart';
import 'Dualar_Sureler/dualar_sureler.dart';
import 'uniteler_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BannerWidget(),
              CategoryGrid(),
              FlatBanner(),
              IlkokulBanner(sinif: '4.',),
             // LiseBanner(),
              FlatBanner(),
              NamazDualariBanner(),
              SorularBanner()

              // ButtonBarWidget(),

              // Diğer sayfa içeriğini eklemek için gerekli widget'ları ekleyin
            ],
          ),
        ),
      ),
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xff45464A),
            Color(0xff24282C),
            /* Color(0xffffb56b),
              Color(0xfff39060),
              Color(0xffe16b5c),
              Color(0xffca485c),
              Color(0xffac255e),
              Color(0xff870160),
              Color(0xff5b0060),
              Color(0xff1f005c) */
          ],
          tileMode: TileMode.mirror,
        ),
        border: Border.all(
            color: const Color(0xff578F85),
            width: 6.0,
            style: BorderStyle.solid),
      ),
      margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
      padding: const EdgeInsets.only(left: 0.0, top: 4.0, bottom: 6.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/logo_512.png',
              height: 70.0,
              width: 70.0,
            ),
          ),
          const Expanded(
            flex: 8,
            child: Center(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'DinDefterim',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'PatrickHand',
                          color: Color(0xff578F85),
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Din Kültürü ve Ahlak Bilgisi',
                        style: TextStyle(
                            fontFamily: 'PatrickHand',
                            color: Color(0xffE27598),
                            fontSize: 24.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: GridView.count(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.9,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children:  const [
          CategoryCard(sinif: "5.", description: 'Sınıf'),
          CategoryCard(sinif: "6.", description: 'Sınıf'),
          CategoryCard(sinif: "7.", description: 'Sınıf'),
          CategoryCard(sinif: "8.", description: 'Sınıf'),

        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String sinif;
  final String description;

  const CategoryCard({
    super.key,
    required this.sinif,
    required this.description,
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>   UnitelerScreen(sinif: sinif,),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xff24282C), width: 5.0),
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 6,
        shadowColor: const Color(0xff24282C),
      //  margin: const EdgeInsets.only(top: 0),
        color: const Color(0xffD9D9D9),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16)),
                      color: Color(0xff24282C),
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          sinif,
                          style: const TextStyle(
                              color: Color(0xff6272A4),
                              fontSize: 46,
                              fontFamily: 'PatrickHand',
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Center(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xff6272A4),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PatrickHand',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlatBanner extends StatelessWidget {
  const FlatBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.maxFinite,
        height: 15.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xff45464A)),
        ),
      ),
    );
  }
}

class IlkokulBanner extends StatelessWidget {
  final String sinif;
  const IlkokulBanner({super.key, required this.sinif});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>   UnitelerScreen(sinif: sinif,),
            ),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xff24282C), width: 5.0),
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 8,
          margin: const EdgeInsets.only(top: 0),
          color: const Color(0xffD9D9D9),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Color(0xff24282C),
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xff24282C)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 10,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'İlkokul',
                          style: TextStyle(
                            color: Color(0xff6272A4),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PatrickHand',
                          ),
                        ),
                        Text(
                          '4.Sınıf',
                          style: TextStyle(
                            color: Color(0xff6272A4),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PatrickHand',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color(0xff24282C),
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xff24282C)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LiseBanner extends StatelessWidget {
  const LiseBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
      child: InkWell(
        onTap: () {
          // Kategori kartına tıklanınca yapılacak işlemler
        },
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xff24282C), width: 5.0),
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 8,
          margin: const EdgeInsets.only(top: 0),
          color: const Color(0xffD9D9D9),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Color(0xff24282C),
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xff24282C)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 10,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Lise',
                        style: TextStyle(
                          color: Color(0xff6272A4),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PatrickHand',
                        ),
                      ),
                      Text(
                        '9 - 10 - 11 - 12. Sınıflar',
                        style: TextStyle(
                          color: Color(0xff6272A4),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PatrickHand',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color(0xff24282C),
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xff24282C)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NamazDualariBanner extends StatelessWidget {
  const NamazDualariBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  const DualarSureler() ,
            ),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xff24282C), width: 5.0),
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 8,
          margin: const EdgeInsets.only(top: 0),
          color: const Color(0xff578F85),
          child: Row(
            children: [
              const Expanded(
                flex: 5,
                child: Center(
                  child: Column(
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Namaz',
                          style: TextStyle(
                            color: Color(0xff24282C),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PatrickHand',
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          ' Sureleri ve Duaları',
                          style: TextStyle(
                            color: Color(0xff24282C),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PatrickHand',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    Container(

                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color(0xff24282C),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.picture_as_pdf,
                                  size: 28,
                                  color: Color(0xffF8F8F2)
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Icon(Icons.headset,
                                  size: 28,
                                  color: Color(0xffF8F8F2)
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SorularBanner extends StatelessWidget {
  const SorularBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  const QuizApp() ,
            ),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xff24282C), width: 5.0),
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 8,
          margin: const EdgeInsets.only(top: 0),
          color: const Color(0xff578F85),
          child: Row(
            children: [
              const Expanded(
                flex: 5,
                child: Center(
                  child: Column(
                    children: [
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          'Sorular ve Sınavlar',
                          style: TextStyle(
                            color: Color(0xff24282C),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PatrickHand',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    Container(

                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color(0xff24282C),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.picture_as_pdf,
                                  size: 28,
                                  color: Color(0xffF8F8F2)
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Icon(Icons.school,
                                  size: 28,
                                  color: Color(0xffF8F8F2)
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              // Giriş/çıkış sayfasına gitmek için işlemler
            },
            child: const Text('Giriş/Çıkış'),
          ),
          ElevatedButton(
            onPressed: () {
              // Ana sayfaya dönmek için işlemler
            },
            child: const Text('Ana Sayfa'),
          ),
          ElevatedButton(
            onPressed: () {
              // Ayarlar sayfasına gitmek için işlemler
            },
            child: const Text('Ayarlar'),
          ),
        ],
      ),
    );
  }
}
