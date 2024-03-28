import 'package:flutter/material.dart';

class Fatiha extends StatelessWidget {
  const Fatiha({super.key});

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
            'Fatiha Suresi ve Anlamı',
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
                      "﴿١﴾ اَلْحَمْدُ لِلّٰهِ رَبِّ الْعَالَم۪ينَۙ ﴿٢﴾ اَلرَّحْمٰنِ الرَّح۪يمِۙ ﴿٣﴾ مَالِكِ يَوْمِ الدّ۪ينِۜ ﴿٤﴾ اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَع۪ينُۜ ﴿٥﴾ اِهْدِنَا الصِّرَاطَ الْمُسْتَق۪يمَۙ ﴿٦﴾ صِرَاطَ الَّذ۪ينَ اَنْعَمْتَ عَلَيْهِمْۙ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّٓالّ۪ينَ ﴿٧﴾",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "1- “Bismillâhi’r-Rahmâni’r-Rahîm. \n2- Elhamdulillâhi Rabbi’l-âlemîn. \n3- Er-Rahmâni’r-Rahîm. \n4- Mâliki yevmi’d-dîn. \n5- İyyâke na’budu ve iyyâke neste’în. \n6- İhdine’s-sırâta’l-mustakîm. \n7- Sırâta’l-lezîne en’amte aleyhim. Ğayri’l-meğdûbi aleyhim ve le’d-dâllîn.”",
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
                      "1- “Rahmân ve Rahîm olan Allah’ın adıyla. \n2- Hamd; Âlemlerin Rabbi olan Allah’a aittir. \n3- (O Allah) Rahmân ve Rahîm’dir. \n4- Din (ödül ve ceza) gününün sahibidir. \n5- (Ey Allah’ım) Biz yalnızca Sana ibadet eder ve yalnızca Sen’den yardım dileriz. \n6- Bizi dosdoğru yola ilet. \n7- Kendilerine nimet verdiğin kimselerin yoluna ilet, gazaba uğrayanların ve sapıkların yoluna değil.”",
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
