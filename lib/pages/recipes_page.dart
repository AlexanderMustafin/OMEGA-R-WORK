import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

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
              onPressed: () {},
              child: const Text(
                'Рецепты',
                style: TextStyle(
                  color: Color(0xff3A3C41),
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
                  color: Color(0xff9196A1),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 160,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 1200,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Рецепты',
                        style: TextStyle(
                          color: Color(0xff25292D),
                          fontSize: 42,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 278,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Divider(
                                indent: 20,
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Divider(
                                endIndent: 23,
                              ),
                              Text(
                                'Добавить рецепт',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 1200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SmallTableWidget(
                    text1: 'Простые блюда',
                    iconString: 'images/ic_menu.png',
                  ),
                  SmallTableWidget(
                    text1: 'Детское',
                    iconString: 'images/pan_menu.png',
                  ),
                  SmallTableWidget(
                    text1: 'От шеф-поваров',
                    iconString: 'images/hat_menu.png',
                  ),
                  SmallTableWidget(
                    text1: 'На праздник',
                    iconString: 'images/party_menu.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 101,
              width: 1200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 28),
                    child: const Text(
                      'Поиск рецепта',
                      style: TextStyle(
                        color: Color(0xff25292D),
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 56,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(35, 28, 0, 0),
                        width: 779,
                        height: 73,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                        ),
                        child: const Text(
                          'Название Блюда...',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 18,
                        width: 489,
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'мясо',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Color(0xff808080),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'деликатесы',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Color(0xff808080),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'пироги',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Color(0xff808080),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'рыба',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Color(0xff808080),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'пост',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Color(0xff808080),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'пасха2021',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Color(0xff808080),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: 152,
                    height: 73,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Поиск',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const RecipeTable(
              recipeType1: 'десерты',
              recipeType2: 'клубника',
              recipeType3: 'сливки',
              photoString: 'images/panna_kotta.png',
              favoriteRating: '10',
              likeRating: '8',
              peopleNumber: '5 персон',
              recipeDescription:
                  'Десерт, который невероятно легко и быстро готовится.'
                  ' Советую подавать его порционно в красивых бокалах, украсив взбитыми сливками,'
                  ' свежими ягодами и мятой.',
              recipeName: 'Клубничная панна-котта',
              timeRequired: '35 мин',
              favoriteIconsString: 'images/filled_star.png',
              likeIconString: 'images/heart.png',
              routeString: '/recipe_panna_kotta',
            ),
            const SizedBox(
              height: 40,
            ),
            const RecipeTable(
              recipeType1: 'вторые блюда',
              recipeType2: 'мясо',
              recipeType3: 'соевый соус',
              photoString: 'images/meatballs.png',
              favoriteRating: '4',
              likeRating: '7',
              peopleNumber: '4 персоны',
              recipeDescription:
                  'Мясные фрикадельки в томатном соусе - несложное и вкусное блюдо,'
                  ' которым можно порадовать своих близких. ',
              recipeName: 'Мясные фрикадельки',
              timeRequired: '90 мин',
              favoriteIconsString: 'images/star.png',
              likeIconString: 'images/heart.png',
              routeString: '/recipe',
            ),
            const SizedBox(
              height: 40,
            ),
            const RecipeTable(
              recipeType1: 'десерты',
              recipeType2: 'завтрак',
              recipeType3: 'блины',
              photoString: 'images/pancakes.png',
              favoriteRating: '25',
              likeRating: '7',
              peopleNumber: '3 персоны',
              recipeDescription: 'Панкейки: меньше, чем блины,'
                  ' но больше, чем оладьи. Основное отличие — в тесте,'
                  ' оно должно быть воздушным, чтобы панкейки не растекались по сковородке...',
              recipeName: 'Панкейки',
              timeRequired: '40 мин',
              favoriteIconsString: 'images/filled_star.png',
              likeIconString: 'images/filled_heart.png',
              routeString: './recipe',
            ),
            const SizedBox(
              height: 40,
            ),
            const RecipeTable(
              recipeType1: 'десерты',
              recipeType2: 'вишня',
              recipeType3: 'мороженое',
              photoString: 'images/icecream.png',
              favoriteRating: '4',
              likeRating: '7',
              peopleNumber: '2 персоны',
              recipeDescription:
                  'Йогуртовое мороженое сочетает в себе нежный вкус и низкую калорийность,'
                  ' что будет особенно актуально для сладкоежек, соблюдающих диету.',
              recipeName: 'Полезное мороженое без сахара',
              timeRequired: '35 мин',
              favoriteIconsString: 'images/star.png',
              likeIconString: 'images/heart.png',
              routeString: '/recipe',
            ),
            const SizedBox(
              height: 65,
            ),
            SizedBox(
              width: 309,
              height: 60,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xffFDB100),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  'Загрузить ещё',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xffFDB100),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 108,
            ),
            UnconstrainedBox(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 1440,
                height: 133,
                decoration: const BoxDecoration(
                  color: Color(0xffFBF9F4),
                ),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      'Recipes',
                      style: TextStyle(
                        color: Color(0xffFDB100),
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
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
                        fontFamily: 'Montserrat',
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SmallTableWidget extends StatelessWidget {
  const SmallTableWidget({
    required this.text1,
    required this.iconString,
    super.key,
  });
  final String text1;
  final String iconString;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 278,
      height: 164,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: OutlinedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffFFEFCC),
              ),
              child: Image.asset(
                iconString,
                height: 24,
                width: 24,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xff25292D),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeTable extends StatelessWidget {
  const RecipeTable({
    required this.recipeType1,
    required this.recipeType2,
    required this.recipeType3,
    required this.photoString,
    required this.favoriteRating,
    required this.likeRating,
    required this.peopleNumber,
    required this.recipeDescription,
    required this.recipeName,
    required this.timeRequired,
    required this.favoriteIconsString,
    required this.likeIconString,
    required this.routeString,
    super.key,
  });
  final String recipeType1;
  final String recipeType2;
  final String recipeType3;
  final String photoString;
  final String favoriteRating;
  final String favoriteIconsString;
  final String likeRating;
  final String likeIconString;
  final String recipeName;
  final String recipeDescription;
  final String timeRequired;
  final String peopleNumber;
  final String routeString;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      height: 430,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: const BorderSide(
              color: Colors.transparent,
              width: 2,
            ),
          ),
        ),
        onPressed: () async {
          await Navigator.pushReplacementNamed(context, routeString);
        },
        child: Row(
          children: [
            SizedBox(
              height: 430,
              width: 430,
              child: Image.asset(photoString),
            ),
            Container(
              height: 430,
              width: 770,
              padding: const EdgeInsets.fromLTRB(49, 36, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 19),
                        width: 290,
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(253, 177, 0, 0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              padding: const EdgeInsets.fromLTRB(6, 4, 6, 4),
                              child: Text(
                                recipeType1,
                                style: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffF29E1F),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(253, 177, 0, 0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              padding: const EdgeInsets.fromLTRB(6, 4, 6, 4),
                              child: Text(
                                recipeType2,
                                style: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffF29E1F),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(253, 177, 0, 0.2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              padding: const EdgeInsets.fromLTRB(6, 4, 6, 4),
                              child: Text(
                                recipeType3,
                                style: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffF29E1F),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 107,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                side: const BorderSide(
                                  color: Color(0xffFDB100),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    favoriteIconsString,
                                    width: 20,
                                    height: 19,
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Text(
                                    favoriteRating,
                                    style: const TextStyle(
                                      color: Color(0xffFDB100),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 50,
                            width: 107,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                side: const BorderSide(
                                  color: Color(0xffFDB100),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    likeIconString,
                                    width: 20,
                                    height: 19,
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Text(
                                    likeRating,
                                    style: const TextStyle(
                                      color: Color(0xffFDB100),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 30),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  SizedBox(
                    width: 693,
                    height: 30,
                    child: Text(
                      recipeName,
                      style: const TextStyle(
                        color: Color(0xff25292D),
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 571,
                    height: 95,
                    child: Text(
                      recipeDescription,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4A525A),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/time.png',
                        width: 48,
                        height: 56,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Время приготовления:',
                            style: TextStyle(
                              color: Color.fromRGBO(37, 41, 45, 0.5),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            timeRequired,
                            style: const TextStyle(
                              color: Color(0xff25292D),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 71,
                      ),
                      SizedBox(
                        width: 170,
                        child: Row(
                          children: [
                            Image.asset(
                              'images/person.png',
                              width: 59,
                              height: 38,
                              color: const Color.fromRGBO(253, 177, 0, 0.5),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Рецепт на:',
                                  style: TextStyle(
                                    color: Color.fromRGBO(37, 41, 45, 0.5),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  peopleNumber,
                                  style: const TextStyle(
                                    color: Color(0xff25292D),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
