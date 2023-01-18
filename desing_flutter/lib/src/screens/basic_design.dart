import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          const Title(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text(
                'Nostrud nostrud nulla elit nostrud ut ea consectetur excepteur ad ea pariatur nulla do reprehenderit. Est culpa nulla occaecat commodo sint esse anim mollit irure ex veniam Lorem ad. Minim fugiat laboris laborum veniam ut proident ullamco aute labore Lorem deserunt. Nisi dolor qui labore sunt Lorem ipsum aliquip ad mollit aliquip excepteur enim labore. Tempor consectetur labore duis est consectetur excepteur fugiat. Eu exercitation ex ullamco laboris consectetur incididunt ex irure laborum sit labore laborum culpa culpa.'),
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Oeschinen lake campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
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
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icon: Icons.phone,
            name: 'CALL',
          ),
          CustomButton(
            icon: Icons.fmd_good_sharp,
            name: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            name: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String name;
  final IconData icon;
  const CustomButton({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
