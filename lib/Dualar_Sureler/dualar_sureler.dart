import 'package:dindefterimv2/Dualar_Sureler/fatiha.dart';
import 'package:dindefterimv2/Dualar_Sureler/fil.dart';
import 'package:dindefterimv2/Dualar_Sureler/kunut.dart';
import 'package:dindefterimv2/Dualar_Sureler/rabbenalar.dart';
import 'package:dindefterimv2/Dualar_Sureler/salliBarik.dart';
import 'package:dindefterimv2/Dualar_Sureler/subhaneke.dart';
import 'package:dindefterimv2/Dualar_Sureler/tahiyyat.dart';
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Subhaneke Duasi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Tahiyyat(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Tahiyyat Duasi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const SalliBarik(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Salli Barik Dualari ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 24,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Rabbenalar(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Rabbena Dualari ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Kunut(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Kunut Dualari ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Fatiha(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Fatiha Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Fil(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Fil Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Kureys Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Maun Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Kevser Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Kafirun Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Nasr Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Tebbet Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Ihlas Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Felak Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 0, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>   const Subhaneke(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Color(0xff24282C), width: 5.0),
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
                                Text(
                                  'Nas Suresi ve Anlami',
                                  style: TextStyle(
                                    color: Color(0xff24282C),
                                    fontSize: 26,
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
                                            size: 28, color: Color(0xffF8F8F2)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Icon(Icons.headset,
                                            size: 28, color: Color(0xffF8F8F2))
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
              ),

              // ButtonBarWidget(),

              // Diğer sayfa içeriğini eklemek için gerekli widget'ları ekleyin
            ],
          ),
        ),
      ),
    );
  }
}
