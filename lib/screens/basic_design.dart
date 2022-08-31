import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape1.jpg')),
          const Title(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: const Text('Duis laborum velit adipisicing quis. Est et cillum esse amet dolor proident amet aute mollit consequat. Est anim laborum nisi dolor do excepteur occaecat nulla elit est deserunt. Non laborum cillum minim duis mollit est sint anim eu. Quis ipsum adipisicing voluptate deserunt aliqua velit amet commodo anim eu irure aute laborum laborum. Amet cillum veniam voluptate qui Lorem.')
          )
        ],
      ),
    );
  }

}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Más allá del muro', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 6),
              Text('Winterfell, Westeros', style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const SizedBox(width: 5),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const[
          ButtonSectionIcon(
            icono: Icons.call,
            texto: 'CALL',
          ),
          ButtonSectionIcon(
            icono: Icons.near_me,
            texto: 'ROUTE',
          ),
          ButtonSectionIcon(
            icono: Icons.share,
            texto: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonSectionIcon extends StatelessWidget {

  final IconData icono;
  final String texto;

  const ButtonSectionIcon({
    Key? key,
    required this.icono,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icono, color: Colors.blue, size: 30),
        const SizedBox(height: 10),
        Text(texto, style: const TextStyle(color: Colors.blue, fontSize: 16))
      ],
    );
  }
}