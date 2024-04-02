import 'package:dindefterimv2/Dualar_Sureler/ayetelkursi.dart';
import 'package:dindefterimv2/Dualar_Sureler/felak.dart';
import 'package:dindefterimv2/Dualar_Sureler/fatiha.dart';
import 'package:dindefterimv2/Dualar_Sureler/fil.dart';
import 'package:dindefterimv2/Dualar_Sureler/ihlas.dart';
import 'package:dindefterimv2/Dualar_Sureler/kafirun.dart';
import 'package:dindefterimv2/Dualar_Sureler/kevser.dart';
import 'package:dindefterimv2/Dualar_Sureler/kunut.dart';
import 'package:dindefterimv2/Dualar_Sureler/kureys.dart';
import 'package:dindefterimv2/Dualar_Sureler/maun.dart';
import 'package:dindefterimv2/Dualar_Sureler/nas.dart';
import 'package:dindefterimv2/Dualar_Sureler/nasr.dart';
import 'package:dindefterimv2/Dualar_Sureler/rabbenalar.dart';
import 'package:dindefterimv2/Dualar_Sureler/salliBarik.dart';
import 'package:dindefterimv2/Dualar_Sureler/subhaneke.dart';
import 'package:dindefterimv2/Dualar_Sureler/surelar_widget.dart';
import 'package:dindefterimv2/Dualar_Sureler/tahiyyat.dart';
import 'package:dindefterimv2/Dualar_Sureler/asr.dart';
import 'package:dindefterimv2/Dualar_Sureler/tebbet.dart';
import 'package:flutter/material.dart';


class DualarSureler extends StatelessWidget {
  const DualarSureler({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
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
            'Namaz Sureleri ve Duaları',
            style: TextStyle(
              color: Color(0xffC0B9B9),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:8.0, bottom: 8.0),
            child: Column(
              children: [


                SurelerWidget(
                  title: 'Fatiha Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Fatiha(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Fil Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Fil(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Kureyş Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Kureys(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Maun Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Maun(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Kevser Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Kevser(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Kafirun Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Kafirun(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Nasr Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Nasr(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Tebbet Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tebbet(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'İhlas Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Ihlas(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Felak Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Felak(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Nas Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Nas(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Asr Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Asr(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Ayet-el Kürsi Suresi ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Ayetelkursi(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Subhaneke Duası ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Subhaneke(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Ettehiyyatu Duası ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tahiyyat(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Salli Barik Duaları ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SalliBarik(),
                      ),
                    );
                  },
                ),

                SurelerWidget(
                  title: 'Rabbenâ  Duaları ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Rabbenalar(),
                      ),
                    );
                  },
                ),


                SurelerWidget(
                  title: 'Kunut Duaları  Duası ve Anlamı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Kunut(),
                      ),
                    );
                  },
                ),











                // Diğer sayfa içeriğini eklemek için gerekli widget'ları ekleyin
              ],
            ),
          ),
        ),
      ),
    );
  }
}
