import 'package:flutter/material.dart';

class FavoriteEmptyPage extends StatelessWidget {
  const FavoriteEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFB),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              height: 5,
              indent: 60,
              endIndent: 60,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Recipes',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            const Divider(
              height: 5,
              indent: 40,
              endIndent: 40,
            ),
            TextButton(
              onPressed: () async {
                await Navigator.pushReplacementNamed(context, '/main');
              },
              child: const Text(
                'Главная',
                style: TextStyle(
                  color: Color(0xff9196A1),
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            const Divider(
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            TextButton(
              onPressed: () async {
                await Navigator.pushReplacementNamed(context, '/recipes');
              },
              child: const Text(
                'Рецепты',
                style: TextStyle(
                  color: Color(0xff9196A1),
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            const Divider(
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            TextButton(
              onPressed: () async {
                await Navigator.pushReplacementNamed(context, '/favorite');
              },
              child: const Text(
                'Избранное',
                style: TextStyle(
                  color: Color(0xff3A3C41),
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                color: Colors.orange,
                size: 38,
              ),
              label: const Text(
                'Привет, Татьяна    |',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout_outlined),
              color: Colors.black45,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 90,
                ),
                SizedBox(
                  width: 1200,
                  child: Row(
                    children: const [
                      Text(
                        'Избранное',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 42,
                          color: Color(0xff25292D),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 117,
                ),
                const Text(
                  'Ваш список пуст',
                  style: TextStyle(
                    color: Color.fromRGBO(253, 177, 0, 0.5),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 888,),
                UnconstrainedBox(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 1400,
                    height: 113,
                    color: const Color(0xffFBF9F4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(width: 120,),
                        Text('Recipes',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Color(0xffFDB100),
                            fontFamily: 'Montserrat',
                          ),),
                        SizedBox(width: 918,),
                        Text('© Recipes 2021',
                          style: TextStyle(
                            color: Color(0xff4A525A),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat,',
                          ),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
