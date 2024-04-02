// unite_icerik.dart

import 'package:flutter/material.dart';

class UniteIcerik extends StatefulWidget {
  final String konuAdi;
  final Widget mdLinkF;
  final String sinif;
  final String uniteNo;

  const UniteIcerik({
    super.key,
    required this.konuAdi,
    required this.mdLinkF,
    required this.sinif,
    required this.uniteNo,
  });

  @override
  State<UniteIcerik> createState() => _UniteIcerikState();
}

class _UniteIcerikState extends State<UniteIcerik> {
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
          title: Text(
            '${widget.sinif} Sınıf - ${widget.uniteNo}',
            style: const TextStyle(
              color: Color(0xffC0B9B9),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        body: Padding(
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
                Expanded(
                  flex: 2,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Color(0xff24282C),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                textAlign: TextAlign.center,

                              widget.konuAdi.substring(4),
                              style: const TextStyle(
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
                ),
                Expanded(
                  flex: 13,
                  child: widget.mdLinkF,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//__________________________________________________
