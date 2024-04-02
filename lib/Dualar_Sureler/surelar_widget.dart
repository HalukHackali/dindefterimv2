import 'package:flutter/material.dart';

class SurelerWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SurelerWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 20),
      child: InkWell(
        onTap: onTap,
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
               Expanded(
                flex: 5,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
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
    );
  }
}

