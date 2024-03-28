import 'package:flutter/material.dart';

class Fil extends StatelessWidget {
  const Fil({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF8F8F2),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF45464A),
                  Color(0xFF282C30),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          title: const Text(
            'Fil Suresi ve Anlamı',
            style: TextStyle(
              color: Color(0xffC0B9B9),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color(0xff24282C),
                  width: 5.0,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 8,
              margin: const EdgeInsets.only(top: 0),
              color: const Color(0xffF8F8F2),
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Color(0xff24282C),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Okunuşu ve Anlamı',
                              style: TextStyle(
                                color: Color(0xffC0B9B9),
                                fontSize: 24,
                                fontFamily: 'PatrickHand',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّح۪يمِ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      "اَلَمْ تَرَ كَيْفَ فَعَلَ رَبُّكَ بِاَصْحَابِ الْف۪يلِۜ ﴿١﴾ اَلَمْ يَجْعَلْ كَيْدَهُمْ ف۪ي تَضْل۪يلٍۙ ﴿٢﴾ وَاَرْسَلَ عَلَيْهِمْ طَيْراً اَبَاب۪يلَۙ ﴿٣﴾ تَرْم۪يهِمْ بِحِجَارَةٍ مِنْ سِجّ۪يلٍۖۙ ﴿٤﴾ فَجَعَلَهُمْ كَعَصْفٍ مَأْكُولٍ ﴿٥﴾",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Bismillâhi’r-Rahmâni’r-Rahîm. \n1- Elemtera keyfe fe’ale Rabbuke bi-ashâbi’l-fîl. \n2- Elem yec’al keydehum fî tadlîl. \n3- Ve ersele ’aleyhim tayran ebâbîl. \n4- Termîhim bi-hicâratin min siccîl. \n5- Fece’alehum ke’asfin me’kûl.",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const Divider(
                    height: 70,
                    color: Colors.grey,
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Rahmân ve Rahîm olan Allah’ın adıyla. \n1- Rabbin fil sahiplerine neler etti, görmedin mi? \n2- Onların kötü planlarını boşa çıkarmadı mı? \n3- Onların üstüne ebabil kuşları gönderdi. \n4- O kuşlar, onların üzerlerine pişkin tuğladan yapılmış taşlar atıyordu. \n5- Böylece Allah onları yenilip çiğnenmiş ekine çevirdi.",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
