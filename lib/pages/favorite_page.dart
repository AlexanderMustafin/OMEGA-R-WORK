import 'package:flutter/material.dart';
import 'package:recipe_book_figma/pages/recipes_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFB),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(left: 35),
          width: 1440,
          child: Row(
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
                onPressed: () {},
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
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 200,
              top: 6,
            ),
            child: Row(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    await Navigator.pushReplacementNamed(
                        context, '/profile_page');
                  },
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
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.logout_outlined),
                  color: Colors.black45,
                ),
              ],
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
                  height: 50,
                ),
                const SizedBox(
                  width: 1200,
                  child: RecipeTable(
                      recipeType1: 'десерты',
                      recipeType2: 'клубника',
                      recipeType3: 'сливки',
                      photoString: 'image/panna_kotta.png',
                      favoriteRating: '10',
                      likeRating: '8',
                      peopleNumber: '5 персон',
                      recipeDescription:
                          'Десерт, который невероятно легко и быстро готовится.'
                          ' Советую подавать его порционно в красивых бокалах,'
                          ' украсив взбитыми сливками, свежими ягодами и мятой.',
                      recipeName: 'Клубничная панна-котта',
                      timeRequired: '35 мин',
                      favoriteIconsString: 'image/filled_star.png',
                      likeIconString: 'image/heart.png',
                      routeString: '/recipe_panna_kotta'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 1200,
                  child: RecipeTable(
                      recipeType1: 'десерты',
                      recipeType2: 'завтрак',
                      recipeType3: 'блины',
                      photoString: 'image/pancakes.png',
                      favoriteRating: '25',
                      likeRating: '7',
                      peopleNumber: '3 персоны',
                      recipeDescription: 'Панкейки: меньше, чем блины,'
                          ' но больше, чем оладьи. '
                          'Основное отличие — в тесте, '
                          'оно должно быть воздушным,'
                          ' чтобы панкейки не растекались по сковородке...',
                      recipeName: 'Панкейки',
                      timeRequired: '40 мин',
                      favoriteIconsString: 'image/filled_star.png',
                      likeIconString: 'image/filled_heart.png',
                      routeString: '/recipe'),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: OutlinedButton(
                    onPressed: () async {
                      await Navigator.pushReplacementNamed(
                          context, '/favorite_empty');
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.orange,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Пустая страница',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 105,
                ),
                UnconstrainedBox(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 1400,
                    height: 113,
                    color: const Color(0xffFBF9F4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          'Recipes',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Color(0xffFDB100),
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(
                          width: 918,
                        ),
                        Text(
                          '© Recipes 2021',
                          style: TextStyle(
                            color: Color(0xff4A525A),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat,',
                          ),
                        ),
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
