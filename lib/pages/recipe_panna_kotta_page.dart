import 'package:flutter/material.dart';

class PannaKottaPage extends StatelessWidget {
  const PannaKottaPage({super.key});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 57,
                ),
                SizedBox(
                  width: 1200,
                  child: TextButton.icon(
                    icon: const Icon(Icons.arrow_back,
                        color: Color(0xffFDB100), size: 18,),
                    onPressed: () async {
                      await Navigator.pushReplacementNamed(context, '/recipes');
                    },
                    label: const Text(
                      'Назад',
                      style: TextStyle(
                        color: Color(0xffFDB100),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const RecipeTableOpened(recipeName: 'Клубничная Панна-Котта',
                    recipeDescription: 'Десерт, который невероятно легко и быстро готовится.'
                        ' Советую подавать его порционно в красивых бокалах,'
                        ' украсив взбитыми сливками, свежими ягодами и мятой.',
                    recipeType1: 'десерты',
                    recipeType2: 'клубника',
                    recipeType3: 'сливки',
                    favoriteRating: '10',
                    favoriteIconsString: 'images/filled_star.png',
                    likeRating: '8',
                    likeIconString: 'images/heart.png',
                    peopleNumber: '5 персон',
                    timeRequired: '35 мин',
                    photoString: 'images/panna_kotta.png',),
                const SizedBox(height: 40,),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                         IngredientsColumn(boldText1: 'Для панна котты',
                            boldText2: 'Для клубничного желе',
                            contentText11: 'Сливки-20-30% - 500мл.',
                            contentText12: 'Молоко - 100мл.',
                            contentText13: 'Желатин - 2 ч.л.',
                            contentText14: 'Сахар - 3 ст.л.',
                            contentText15: 'Ванильный сахар - 2 ч.л.',
                            contentText21: 'Сливки-20-30% - 500мл.',
                            contentText22: 'Молоко - 100 мл.',
                            contentText23: 'Желатин - 2 ч.л.',
                            contentText24: 'Сахар - 3 ст.л.',
                            contentText25: 'Ванильный сахар - 2 ч.л.',),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const StepWidget(stepNumber: 'Шаг 1',
                            stepDescription: 'Приготовим панна котту: '
                                'Зальем желатин молоком и поставим на 30 минут для набухания. '
                                'В сливки добавим сахар и ванильный сахар.'
                                ' Доводим до кипения (не кипятим!).',),
                        const SizedBox(height: 20,),
                        const StepWidget(stepNumber: 'Шаг 2',
                            stepDescription: 'Добавим в сливки набухший в молоке желатин.'
                                ' Перемешаем до полного растворения. Огонь отключаем.'
                                ' Охладим до комнатной температуры.',),
                        const SizedBox(height: 20,),
                        const StepWidget(stepNumber: 'Шаг 3',
                            stepDescription: 'Разольем охлажденные сливки по'
                                ' креманкам и поставим в холодильник до полного '
                                'застывания. Это около 3-5 часов.',),
                        const SizedBox(height: 20,),
                        const StepWidget(stepNumber: 'Шаг 4',
                            stepDescription: 'Приготовим клубничное желе: '
                                'Клубнику помоем, очистим от плодоножек.'
                                ' Добавим сахар. Взбиваем клубнику с помощью'
                                ' блендера в пюре.',),
                        const SizedBox(height: 20,),
                        const StepWidget(stepNumber: 'Шаг 5',
                            stepDescription: 'Добавим в миску с желатином '
                                '2ст.ложки холодной воды и сок лимона. '
                                'Перемешаем и поставим на 30 минут для набухания.'
                                ' Доведем клубничное пюре до кипения. Добавим '
                                'набухший желатин, перемешаем до полного растворения.'
                                ' Огонь отключаем. Охладим до комнатной температуры.',),
                        const SizedBox(height: 20,),
                        const StepWidget(stepNumber: 'Шаг 6',
                            stepDescription: 'Сверху на застывшие сливки добавим'
                                ' охлажденное клубничное желе. Поставим в '
                                'холодильник до полного застывания клубничного'
                                ' желе. Готовую панна коту подаем с фруктами.',),
                        const SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Приятного аппетита!',
                              style: TextStyle(
                                color: Color(0xffFDB100),
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                              ),)
                          ],
                        )

                      ],
                    )
                  ],
                ),
                const SizedBox(height: 103,),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeTableOpened extends StatelessWidget {
  const RecipeTableOpened({
    required this.recipeName,
    required this.recipeDescription,
    required this.recipeType1,
    required this.recipeType2,
    required this.recipeType3,
    required this.favoriteRating,
    required this.favoriteIconsString,
    required this.likeRating,
    required this.likeIconString,
    required this.peopleNumber,
    required this.timeRequired,
    required this.photoString,
    super.key,
  });
  final String recipeName;
  final String recipeDescription;
  final String recipeType1;
  final String recipeType2;
  final String recipeType3;
  final String favoriteRating;
  final String favoriteIconsString;
  final String likeRating;
  final String likeIconString;
  final String timeRequired;
  final String peopleNumber;
  final String photoString;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      height: 542,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 811,
                height: 62,
                child: Text(
                  recipeName,
                  style: const TextStyle(
                    color: Color(0xff25292D),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 42,
                  ),
                ),
              ),
              const SizedBox(
                width: 33,
              ),
              SizedBox(
                width: 60,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          color: Color.fromRGBO(158, 163, 172, 0.7),),),
                  child: const Icon(
                    Icons.delete,
                    size: 18,
                    color: Color.fromRGBO(158, 163, 172, 0.7),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              SizedBox(
                width: 278,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 37,
                      ),
                      Icon(
                        Icons.edit,
                        size: 18,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Text(
                        'Редактировать',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

          Row(
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
                    const SizedBox(
                      width: 693,
                      height: 30,
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
        ],
      ),
    );
  }
}

class IngredientsColumn extends StatelessWidget {
  const IngredientsColumn(
      {required this.boldText1,
      required this.boldText2,
      required this.contentText11,
      required this.contentText12,
      required this.contentText13,
      required this.contentText14,
      required this.contentText15,
      required this.contentText21,
      required this.contentText22,
      required this.contentText23,
      required this.contentText24,
      required this.contentText25,
      super.key,});
  final String boldText1;
  final String contentText11;
  final String contentText12;
  final String contentText13;
  final String contentText14;
  final String contentText15;
  final String boldText2;
  final String contentText21;
  final String contentText22;
  final String contentText23;
  final String contentText24;
  final String contentText25;

  static const lowTextStyle = TextStyle(
    color: Color(0xff4A525A),
    fontWeight: FontWeight.w400,
    fontSize: 18,
    fontFamily: 'Montserrat',
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ингридиенты',
            style: TextStyle(
              color: Color(0xffFDB100),
              fontWeight: FontWeight.w700,
              fontFamily: 'Montserrat',
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            boldText1,
            style: const TextStyle(
              color: Color(0xff4A525A),
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contentText11,
                style: lowTextStyle,
              ),
              Text(
                contentText12,
                style: lowTextStyle,
              ),
              Text(
                contentText13,
                style: lowTextStyle,
              ),
              Text(
                contentText14,
                style: lowTextStyle,
              ),
              Text(
                contentText15,
                style: lowTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            boldText2,
            style: const TextStyle(
              color: Color(0xff4A525A),
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contentText21,
                style: lowTextStyle,
              ),
              Text(
                contentText22,
                style: lowTextStyle,
              ),
              Text(
                contentText23,
                style: lowTextStyle,
              ),
              Text(
                contentText24,
                style: lowTextStyle,
              ),
              Text(
                contentText25,
                style: lowTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StepWidget extends StatelessWidget {
  const StepWidget(
      {required this.stepNumber,
        required this.stepDescription,
        super.key,});

  final String stepNumber;
  final String stepDescription;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 790,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      border: Border.all(color: Colors.black45),),
      padding: const EdgeInsets.fromLTRB(73, 50, 74, 47,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(stepNumber,
          style: const TextStyle(
            color: Color(0xff4A525A),
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
          ),),
          const SizedBox(height: 10,),
          Text(stepDescription,
          style: const TextStyle(
            color: Color(0xff4A525A),
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'Montserrat',
          ),),
        ],
      ),
    );
  }
}
