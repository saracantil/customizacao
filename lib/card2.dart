import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      //1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://pbs.twimg.com/media/FoeE653aEAE1ba8?format=jpg&name=900x900'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(children: [
          const AuthorCard(
            authorName: 'Adam simon',
            title: 'Software Engineer',
            imageProvider: NetworkImage(
                'https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/10/a6/43/10a643c1-19c7-f0bb-c966-4c24a2f52d84/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1200x630wa.png'),
          ),
          Expanded(
            //2
            child: Stack(
              children: [
                //3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Rio',
                    style: GpsdoMundoTheme.darkTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Pão de Açucar',
                        style: GpsdoMundoTheme.darkTextTheme.headline1,
                      )),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
