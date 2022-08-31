import 'dart:math';

import 'package:flutter/material.dart';

class ScrollDesignScrenn extends StatelessWidget {

  const ScrollDesignScrenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          MainContent()
        ],
      )
    );
  }

}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const TextStyle textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Text('11°', style: textStyle),
          const Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          // const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
          Transform.rotate(
            angle: 3.14 / 4,
            child: Container(
              margin: const EdgeInsets.only(right: 30.0, bottom: 30.0),
              height: 50.0,
              width: 50.0,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white, width: 4.0),
                  right: BorderSide(color: Colors.white, width: 4.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xff30BAD6),
      color: const Color.fromRGBO(80, 194, 221, 1.0),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}