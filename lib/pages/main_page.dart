import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            margin: const EdgeInsets.only(left: 228),
            width: 1440,
            child: Row(
              children: [
                const Divider(
                  height: 5,
                  indent: 60,
                  endIndent: 60,
                ),
                const Text(
                  'Recipes',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontFamily: 'Montserrat'),
                ),
                const Divider(
                  height: 5,
                  indent: 40,
                  endIndent: 40,
                ),
                TextButton(
                  onPressed: () async {},
                  child: const Text(
                    'Главная',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Montserrat'),
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
                        color: Colors.black45,
                        fontSize: 18,
                        fontFamily: 'Montserrat'),
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
                        color: Colors.black45,
                        fontSize: 18,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 380,
                top: 6,
              ),
              child: TextButton(
                onPressed: () {
                  _DialogBuilderProfile(context);
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.account_circle,
                      color: Colors.orange,
                      size: 38,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text('Войти',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                  ],
                ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 200),
                      width: 550,
                      child: Column(
                        children: [
                          const Text(
                            'Готовь и делись рецептами',
                            style: TextStyle(
                                fontSize: 72,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto Flex',
                                color: Color(0xff25292D)),
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                          const Text(
                            'Никаких кулинарных книг и блокнотов! Храни все любимые рецепты в одном месте.',
                            style: TextStyle(
                                fontFamily: "Roboto Flex",
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color(0xff4A525A)),
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 278,
                                height: 60,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16))),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 39,
                                      ),
                                      Image.asset('image/plus.png'),
                                      const SizedBox(
                                        width: 23,
                                      ),
                                      const Text(
                                        'Добавить рецепт',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              SizedBox(
                                width: 216,
                                height: 60,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      primary: const Color(0xffF5F5F5),
                                      side: const BorderSide(
                                          width: 1, color: Color(0xffFDB100))),
                                  onPressed: () {},
                                  child: const Text(
                                    'Войти',
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xffFDB100)),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      'image/Rectangle1.png',
                      width: 602,
                      height: 800,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 113,
                ),
                SizedBox(
                  width: 680,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Умная сортировка по тегам",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 42,
                            color: Color(0xff25292D),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                          'Добавляй рецепты и указывай наиболее популярные теги. Это позволит быстро находить любые категории.',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff4A525A),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 42,
                ),
                SizedBox(
                  width: 1200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TableWidget(
                        text1: "Простые блюда",
                        text2: "Время приготвления таких блюд не более 1 часа",
                        iconString: 'image/ic-menu.png',
                      ),
                      TableWidget(
                        text1: "Детское",
                        text2:
                            "Самые полезные блюда которые можно детям любого возраста",
                        iconString: 'image/children.png',
                      ),
                      TableWidget(
                        text1: "От шеф-поваров",
                        text2:
                            "Требуют умения, времени и терпения, зато как в ресторане",
                        iconString: 'image/schef.png',
                      ),
                      TableWidget(
                        text1: "На праздник",
                        text2:
                            "Чем удивить гостей, чтобы все были сыты за праздничным столом",
                        iconString: 'image/holidays.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 157,
                ),
                SizedBox(
                  width: 1150,
                  height: 543,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset('image/Rectangle8.png'),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const CountLikeTime(),
                            Container(
                                margin: EdgeInsets.fromLTRB(73, 42.5, 0, 0),
                                width: 513,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'image/smile_alll.png',
                                      width: 100.51,
                                      height: 80,
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    const Text(
                                        'Тыквенный супчик на кокосовом молоке',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 42,
                                            color: Color(0xff25292D))),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                        'Если у вас осталась тыква, и вы не знаете что с ней сделать, то это решение для вас! Ароматный, согревающий суп-пюре на кокосовом молоке. Можно даже в Пост! ',
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color(0xff4A525A),
                                        ))
                                  ],
                                ))
                          ],
                        )
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(158, 150, 0, 0),
                  width: 884,
                  child: Column(
                    children: [
                      const Text(
                        'Поиск рецептов',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 42,
                          color: Color(0xff25292D),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                          'Введите примерное название блюда, а мы по тегам найдем его',
                          style: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff4A525A),
                          )),
                      const SizedBox(
                        height: 64,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 716,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: 'Название блюда....',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 152,
                            height: 73,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)))),
                              onPressed: () {},
                              child: const Text('Поиск',
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xffFFFFFF),
                                  )),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: const [
                          TextButtonSearch(name: "Мясо"),
                          TextButtonSearch(name: "Деликатесы"),
                          TextButtonSearch(name: "Пироги"),
                          TextButtonSearch(name: "Рыба"),
                        ],
                      ),
                    ],
                  ),
                ),
                const BottomCustomAppBar(),
              ],
            ),
          ),
        )));
  }
}

class BottomCustomAppBar extends StatelessWidget {
  const BottomCustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFBF9F4),
      height: 113,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 120),
            child: const Text('Recipes',
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: Color(0xffFDB100))),
          ),
          Container(
            margin: const EdgeInsets.only(right: 120),
            child: const Text('© Recipes 2021',
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xff4A525A))),
          )
        ],
      ),
    );
  }
}

class TextButtonSearch extends StatelessWidget {
  final String name;
  const TextButtonSearch({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(name,
            style: const TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff808080),
            )));
  }
}

class TableWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String iconString;
  const TableWidget(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.iconString})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 278,
      height: 271,
      child: OutlinedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffFFEFCC)),
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
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xff25292D)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xff4A525A)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CountLikeTime extends StatelessWidget {
  const CountLikeTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Icon(
          Icons.favorite_border,
          color: Color(0xff000000),
        ),
        SizedBox(
          width: 9,
        ),
        Text('356',
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff25292D),
            )),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.lock_clock_outlined,
          color: Color(0xff000000),
        ),
        SizedBox(
          width: 10,
        ),
        Text('35 минут',
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff25292D),
            )),
      ],
    );
  }
}

Future<void> _DialogBuilderProfile(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: const EdgeInsets.fromLTRB(60, 60, 0, 0),
        contentPadding: const EdgeInsets.fromLTRB(60, 30, 0, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        title: const Text(
          'Войдите в профиль',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xff25292D)),
        ),
        content: const Text(
          'Добавлять рецепты могут только зарегистрированные\n'
          'пользователи.',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xff4A525A),
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(45, 0, 0, 60),
              width: 278,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
                onPressed: () {
                  _DialogBuilderLogin(context);
                },
                child: const Text(
                  'Войти',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 45, 60),
              width: 278,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    primary: const Color(0xffffffff),
                    side: const BorderSide(width: 1, color: Color(0xffFDB100))),
                onPressed: () {
                  _DialogBuilderRegistration(context);
                },
                child: const Text(
                  'Регистрация',
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xffFDB100)),
                ),
              ),
            ),
            onPressed: () {},
          ),
        ],
      );
    },
  );
}

Future<void> _DialogBuilderRegistration(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: const EdgeInsets.fromLTRB(60, 60, 0, 0),
        contentPadding: const EdgeInsets.fromLTRB(60, 47, 60, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        title: const Text(
          'Регистрация',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xff25292D)),
        ),
        content: Container(
          width: 580,
          height: 216,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 580,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: 'Имя',
                    hintStyle: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xff25292D).withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 580,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: 'Логин',
                    hintStyle: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xff25292D).withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 278,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        hintText: 'Пароль',
                        hintStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xff25292D).withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  SizedBox(
                    width: 278,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        hintText: 'Повторите пароль',
                        hintStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xff25292D).withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Минимум 8 символов',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color(0xff25292D).withOpacity(0.3)))
            ],
          ),
        ),
        actions: <Widget>[
          Column(
            children: [
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 0, 40),
                      width: 278,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Зарегистрироваться',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 60, 40),
                      width: 278,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            primary: const Color(0xffffffff),
                            side: const BorderSide(
                                width: 1, color: Color(0xffFDB100))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Отмена',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xffFDB100)),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: TextButton(
                  onPressed: () {},
                  child: TextButton(
                    onPressed: () {
                      _DialogBuilderLogin(context);
                    },
                    child: const Text(
                      'У меня уже есть аккаунт',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xffFDB100),
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.dashed),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}

Future<void> _DialogBuilderLogin(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: const EdgeInsets.fromLTRB(60, 60, 0, 0),
        contentPadding: const EdgeInsets.fromLTRB(60, 30, 0, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        title: const Text(
          'Войти',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xff25292D)),
        ),
        content: SizedBox(
          width: 580,
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 580,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: 'Логин',
                    hintStyle: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xff25292D).withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 580,
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: 'Пароль',
                    hintStyle: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xff25292D).withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Column(
            children: [
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 0, 60),
                      width: 278,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Войти',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 45, 60),
                      width: 278,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            primary: const Color(0xffffffff),
                            side: const BorderSide(
                                width: 1, color: Color(0xffFDB100))),
                        onPressed: () {
                          _DialogBuilderRegistration(context);
                        },
                        child: const Text(
                          'Регистрация',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xffFDB100)),
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: TextButton(
                  onPressed: () {},
                  child: TextButton(
                    onPressed: () {
                      _DialogBuilderRegistration(context);
                    },
                    child: const Text(
                      'У меня еще нет аккаунта',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xffFDB100),
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.dashed),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
