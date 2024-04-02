// uniteler_scree.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'data/model.dart';
import 'unite_icerik.dart';

class UnitelerScreen extends StatefulWidget {
  final String sinif;

  const UnitelerScreen({
    super.key,
    required this.sinif,
  });

  @override
  UnitelerScreenState createState() => UnitelerScreenState();
}

class UnitelerScreenState extends State<UnitelerScreen> {
  late List<UniteModel> uniteList;
  late List<UniteModel> categoryUnits;
  late String selectedTabTitle;

  @override
  void initState() {
    super.initState();
    uniteList = UniteModel.getSampleData();
    categoryUnits = getCategoryUnits(widget.sinif);
    selectedTabTitle =
        categoryUnits.isNotEmpty ? categoryUnits[0].uniteAdi : '';
  }

  List<UniteModel> getCategoryUnits(String sinif) {
    return uniteList.where((kitap) => kitap.sinif == sinif).toList();
  }

  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categoryUnits.length,
      child: Scaffold(
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
            title: Text(
              '${widget.sinif} Sınıf - Üniteler',
              style: const TextStyle(
                color: Color(0xffEFF2F7),
              ),
            ),
            bottom: TabBar(
              dragStartBehavior: DragStartBehavior.start,
              automaticIndicatorColorAdjustment: true,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.all(0.2),
              dividerHeight: 3,
              tabAlignment: TabAlignment.fill,
              splashBorderRadius:
                  const BorderRadius.all(Radius.circular(0)),
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              labelStyle: const TextStyle(fontSize: 13),
              tabs: categoryUnits
                  .map((unite) => Tab(text: unite.uniteNo))
                  .toList(),
              indicator: const BoxDecoration(color: Color(0xff586191)),
              labelColor: const Color(0xffEFF2F7),
              unselectedLabelColor: const Color(0xffc9c9c9),
              onTap: (index) {
                setState(() {
                  selectedTabTitle = categoryUnits[index].uniteAdi;
                });
              },
            ),
          ),
          body: TabBarView(
            children: categoryUnits
                .map(
                  (unite) => FutureBuilder(
                    future: DefaultAssetBundle.of(context)
                        .loadString(unite.uniteAdi),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return WillPopScope(
                          onWillPop: () async {
                            return shouldPop;
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Flex(
                              direction: Axis.vertical,
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        UniteAdi(uniteModel: unite),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        KavramlarOgrenmeAlani(
                                            unite.kavramlarOgrenmeAlani),
                                        const SizedBox(height: 10),
                                        unitAltKonuAdiBant(
                                          context,
                                          unite.kazanimAdi_1,
                                          UniteIcerik(
                                            konuAdi: unite.kazanimAdi_1,
                                            mdLinkF: KonuIcerikMarkDown(
                                              mdLink: unite.uniteKazanim_1,
                                            ),
                                            sinif: unite.sinif,
                                            uniteNo: unite.uniteNo,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        unitAltKonuAdiBant(
                                          context,
                                          unite.kazanimAdi_2,
                                          UniteIcerik(
                                            konuAdi: unite.kazanimAdi_2,
                                            mdLinkF: KonuIcerikMarkDown(
                                              mdLink: unite.uniteKazanim_2,
                                            ),
                                            sinif: unite.sinif,
                                            uniteNo: unite.uniteNo,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        unitAltKonuAdiBant(
                                          context,
                                          unite.kazanimAdi_3,
                                          UniteIcerik(
                                            konuAdi: unite.kazanimAdi_3,
                                            mdLinkF: KonuIcerikMarkDown(
                                              mdLink: unite.uniteKazanim_3,
                                            ),
                                            sinif: unite.sinif,
                                            uniteNo: unite.uniteNo,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        unitAltKonuAdiBant(
                                          context,
                                          unite.kazanimAdi_4,
                                          UniteIcerik(
                                            konuAdi: unite.kazanimAdi_4,
                                            mdLinkF: KonuIcerikMarkDown(
                                              mdLink: unite.uniteKazanim_4,
                                            ),
                                            sinif: unite.sinif,
                                            uniteNo: unite.uniteNo,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        unitAltKonuAdiBant(
                                          context,
                                          unite.kazanimAdi_5,
                                          UniteIcerik(
                                            konuAdi: unite.kazanimAdi_5,
                                            mdLinkF: KonuIcerikMarkDown(
                                              mdLink: unite.uniteKazanim_5,
                                            ),
                                            sinif: unite.sinif,
                                            uniteNo: unite.uniteNo,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        unitAltKonuAdiBant(
                                          context,
                                          unite.kazanimAdi_6,
                                          UniteIcerik(
                                            konuAdi: unite.kazanimAdi_6,
                                            mdLinkF: KonuIcerikMarkDown(
                                              mdLink: unite.uniteKazanim_6,
                                            ),
                                            sinif: unite.sinif,
                                            uniteNo: unite.uniteNo,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        unitAltKonuAdiBant(
                                          context,
                                          unite.kazanimAdi_7,
                                          UniteIcerik(
                                            konuAdi: unite.kazanimAdi_7,
                                            mdLinkF: KonuIcerikMarkDown(
                                              mdLink: unite.uniteKazanim_7,
                                            ),
                                            sinif: unite.sinif,
                                            uniteNo: unite.uniteNo,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        unitAltKonuAdiBant(
                                          context,
                                          unite.kazanimAdi_8,
                                          UniteIcerik(
                                            konuAdi: unite.kazanimAdi_8,
                                            mdLinkF: KonuIcerikMarkDown(
                                              mdLink: unite.uniteKazanim_8,
                                            ),
                                            sinif: unite.sinif,
                                            uniteNo: unite.uniteNo,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Markdown(data: snapshot.data.toString());
                      }
                    },
                  ),
                )
                .toList(),
          ),
      ),
    );
  }
}

//__________________________________________________

class KonuIcerikMarkDown extends StatelessWidget {
  final String mdLink;
  const KonuIcerikMarkDown({super.key, required this.mdLink});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString(mdLink),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data.toString(),
              styleSheet: MarkdownStyleSheet(
                h1: const TextStyle(
                  color: Color(0xff586191),
                  //color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
                h2: const TextStyle(
                  color: Color(0xffC31384),
                  //color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                h3: const TextStyle(
                  color: Color(0xffD95D94),
                  //color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                p: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

//__________________UniteAdi________________________________
class UniteAdi extends StatelessWidget {
  final UniteModel uniteModel;

  const UniteAdi({
    super.key,
    required this.uniteModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color(0xff24282C), width: 5.0),
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      margin: const EdgeInsets.only(top: 0),
      color: const Color(0xff578F85),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.fill,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Color(0xff24282C),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Column(
                          children: [
                            Text(uniteModel.uniteNo.characters.take(2).toString(),
                                style: const TextStyle(
                                  color: Color(0xffF8F8F2),
                                  fontSize: 32,
                                  fontFamily: 'PatrickHand',
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center),
                             const Text("  Ünite  ",
                                style: TextStyle(
                                  color: Color(0xffF8F8F2),
                                  fontSize: 24,
                                  fontFamily: 'PatrickHand',
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(uniteModel.uniteAdi,
                  style: const TextStyle(
                    color: Color(0xff24282C),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PatrickHand',
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }
}

//________________KavramlarOgrenmeAlani____________________

class KavramlarOgrenmeAlani extends StatelessWidget {
  const KavramlarOgrenmeAlani(this.kavramBir, {super.key});

  final List<String> kavramBir;

  @override
  Widget build(BuildContext context) {
    // Listenin son elemanını çıkar
    List<String> kavramlarExceptLast =
        kavramBir.sublist(0, kavramBir.length - 1);

    // Listeyi birleştirerek bir dize elde et
    String kavramBirString = kavramlarExceptLast.join('\n');

    // Listenin son elemanını al
    String sonKavram = kavramBir.last;

    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff578F85),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.only(
              top: 6,
              left: 6,
              bottom: 6,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff24282C),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: SizedBox(
                height: 145,
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          ' Kavramlar ',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffF8F8F2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 3,
                        color: Color(0xff578F85),
                        endIndent: 36,
                        indent: 36,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          kavramBirString,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xffF8F8F2),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff24282C),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.only(
              top: 6,
              right: 6,
              bottom: 6,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff578F85),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: SizedBox(
                height: 145,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        " Öğrenme Alanı ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffF8F8F2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 3,
                      color: Color(0xff24282C),
                      endIndent: 20,
                      indent: 20,
                    ),
                    Text(
                      sonKavram,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xffF8F8F2),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//__________________________________________________
Widget unitAltKonuAdiBant(
  BuildContext context,
  String konuAdi,
  Widget pageLink,
) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => pageLink));
    },
    child: SizedBox(
      height: 70, // Kart yüksekliği burada belirlendi
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xff24282C),
            width: 5.0,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 8,
        margin: const EdgeInsets.only(top: 6),
        color: const Color(0xff6272A4),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Color(0xff24282C),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                konuAdi.characters.take(4).toString(),
                                style: const TextStyle(
                                  color: Color(0xffF8F8F2),
                                  fontSize: 20,
                                  fontFamily: 'PatrickHand',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  konuAdi.substring(4),
                  style: TextStyle(
                    color: const Color(0xffE5E5E5),
                    fontSize: konuAdi.length > 38 ? 18 : 22,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'PatrickHand',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
//__________________________________________________
