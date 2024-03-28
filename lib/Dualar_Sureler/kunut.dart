import 'package:flutter/material.dart';

class Kunut extends StatelessWidget {
  const Kunut({super.key});

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
            'Kunut Duaları ve Anlamı',
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
                      "اَللَّهُمَّ إِنَّا نَسْتَعِينُكَ وَ نَسْتَغْفِرُكَ وَ نَسْتَهْدِيكَ ﴿﴾ وَ نُؤْمِنُ بِكَ وَ نَتُوبُ اِلَيْكَ ﴿﴾ وَ نَتَوَكَّلُ عَلَيْكَ وَنُثْنِى عَلَيْك اْلخَيْرَ كُلَّهُ نَشْكُرُكَ وَ لاَ نَكْفُرُكَ ﴿﴾ وَ نَخْلَعُ وَ نَتْرُكُ مَنْ يَفْجُرُكَ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Allâhumme innâ nesteînuke ve nestağfiruke ve nestehdik. Ve nu'minu bike ve netûbu ileyk. Ve netevekkelu aleyke ve nusni aleykel-hayra kullehu neşkuruke ve lâ nekfuruke ve nahleu ve netruku men yefcuruk",
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
                      "Allahım! Senden yardım isteriz, günahlarımızı bağışlamanı isteriz, razı olduğun şeylere hidayet etmeni isteriz. Sana inanırız, sana tevbe ederiz. Sana güveniriz. Bize verdiğin bütün nimetleri bilerek seni hayır ile överiz. Sana şükrederiz. Hiçbir nimetini inkar etmez ve onları başkasından bilmeyiz. Nimetlerini inkar eden ve sana karşı geleni bırakırız.",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const Divider(
                    height: 70,
                    color: Colors.grey,
                    thickness: 5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      "اَللَّهُمَّ اِيَّاكَ نَعْبُدُ وَ لَكَ نُصَلِّى وَ نَسْجُدُ ﴿﴾ وَ اِلَيْكَ نَسعْىَ وَ نَحْفِدُ ﴿﴾ نَرْجُو رَحْمَتَكَ وَ نَخْشَى عَذَابَك ﴿﴾ اِنَّ عَذَابَكَ بِاْلكُفَّارِ مُلْحِقٌ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Allâhumme iyyâke na'budu ve leke nusalli ve nescudu ve ileyke nes'a ve nahfidu nercû rahmeteke ve nahşâ azâbeke inne azâbeke bilkuffâri mulhık",
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
                      "Allahım! Biz yalnız sana kulluk ederiz. Namazı yalnız senin için kılarız, ancak sana secde ederiz. Yalnız sana koşar ve sana yaklaştıracak şeyleri kazanmaya çalışırız. İbadetlerini sevinçle yaparız. Rahmetinin devamını ve çoğalmasını dileriz. Azabından korkarız, şüphesiz senin azabın kafirlere ve inançsızlara ulaşır.",
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
