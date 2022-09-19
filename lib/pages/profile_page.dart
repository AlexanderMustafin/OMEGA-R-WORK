import 'package:flutter/material.dart';
import 'package:recipe_book_figma/pages/recipes_page.dart';
import 'package:recipe_book_figma/pages/main_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(left: 228),
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
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 350,
              top: 6,
            ),
            child: Row(
              children: [
                TextButton.icon(
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
          child: Center(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                  width: 1440,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 54,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(Icons.arrow_back),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    'Назад',
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color(0xffFDB100)),
                                  )
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            'Мой профиль',
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                              fontSize: 42,
                              color: Color(0xff25292D),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        width: 1200,
                        height: 311,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(73, 60, 40, 0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 542,
                                        height: 50,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            hintText: 'Имя',
                                            hintStyle: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: const Color(0xff25292D)
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 542,
                                        height: 50,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            hintText: 'Логин',
                                            hintStyle: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xff25292D)
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 542,
                                        height: 50,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            hintText: 'Пароль',
                                            hintStyle: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xff25292D)
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 23, 23, 0),
                                      width: 522,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Image.asset('image/pencil.png')
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 12),
                                          width: 472,
                                          height: 191,
                                          child: TextField(
                                            maxLines: 10,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              hintText:
                                                  'Напишите немного о себе',
                                              hintStyle: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: const Color(0xff25292D)
                                                    .withOpacity(0.5),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 40),
                          width: 1200,
                          height: 151.18,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ProfileTableWidget(text1: 'Всего рецептов'),
                              ProfileTableWidget(text1: 'Всего лайков'),
                              ProfileTableWidget(text1: 'В избранных')
                            ],
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                        child: Row(
                          children: const [
                            Text(
                              'Мои рецепты',
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Color(0xff25292D)),
                            )
                          ],
                        ),
                      ),
                      const RecipeTable(
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
                      const SizedBox(
                        height: 20,
                      ),
                      const RecipeTable(
                          recipeType1: 'вторые блюда',
                          recipeType2: 'мясо',
                          recipeType3: 'соевый соус',
                          photoString: 'image/meat_fricadel.png',
                          favoriteRating: '4',
                          likeRating: '7',
                          peopleNumber: '4 персоны',
                          recipeDescription:
                              'Мясные фрикадельки в томатном соусе - несложное и'
                              'вкусное блюдо, которым можно порадовать своих близких.',
                          recipeName: 'Мясные фрикадельки',
                          timeRequired: '90 мин',
                          favoriteIconsString: 'image/star.png',
                          likeIconString: 'image/heart.png',
                          routeString: '/recipe_panna_kotta'),
                      const SizedBox(
                        height: 73.82,
                      ),
                      const BottomCustomAppBar(),
                    ],
                  )))),
    );
  }
}

class ProfileTableWidget extends StatelessWidget {
  final String text1;
  const ProfileTableWidget({Key? key, required this.text1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 378,
      height: 151.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(22.13, 32.13, 0, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'image/ic_menu.png',
                              width: 46,
                              height: 47,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 13.63,
                        ),
                        Row(
                          children: [
                            Text(text1,
                                style: const TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff25292D)))
                          ],
                        ),
                      ])),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 29.5, 0),
            child: const Text('15',
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 107,
                    color: Color(0xffFDB100))),
          ),
        ],
      ),
    );
  }
}
