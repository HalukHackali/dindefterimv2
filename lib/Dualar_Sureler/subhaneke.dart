import 'package:flutter/material.dart';

class Subhaneke extends StatelessWidget {
  const Subhaneke({super.key});

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
            'Subhaneke Duası ve Anlamı',
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
                      'سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ ﴿﴾ وَتَبَارَكَ اسْمُكَ ﴿﴾ وَتَعَالَى جَدُّكَ ﴿﴾ وَلاَ إِلَهَ غَيْرُكَ',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Subhânekellâhumme ve bi hamdik ve tebârekesmuk ve teâlâ cedduk (ve celle senâuk *) ve lâ ilâhe ğayruk.',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      '* Sübhâneke duası, sadece Cenaze namazında parantez içindeki “Ve celle senâük”cümlesi ile beraber okunur.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const Divider(
                    height: 70,
                    color: Colors.grey,
                    thickness: 3,
                    indent : 20,
                    endIndent : 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Allah'ım! Sen eksik sıfatlardan pak ve uzaksın. Seni daima böyle tenzih eder ve överim. Senin adın mübarektir. Varlığın her şeyden üstündür. Senden başka ilah yoktur.",
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
