import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
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
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Divider(
              height: 5,
              indent: 60,
              endIndent: 60,
            ),
            Text(
              'Recipes',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.orange, fontSize: 24, fontFamily: 'Montserrat'),
            ),
            Divider(
              height: 5,
              indent: 40,
              endIndent: 40,
            ),
            Text(
              'Главная',
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontFamily: 'Montserrat'),
            ),
            Divider(
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              'Рецепты',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontFamily: 'Montserrat'),
            ),
            Divider(
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              'Избранное',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontFamily: 'Montserrat'),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 6),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.account_circle,
                color: Colors.orange,
                size: 38,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 120, top: 20),
            child: Text('Войти', style: TextStyle(color: Colors.orange, fontSize: 18, fontFamily: 'Montserrat'),),)
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            height: 200,
            width: 120,
          ),
          Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 60, 0, 0),
              padding: EdgeInsets.all(0),
              width: 550,
              height: 500,
              child: Column(
                children: [
                  Text(
                    'Готовь и делись рецептами',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto Flex',
                    ),
                    ),
                    SizedBox(height: 42,),
                    Text(
                      'Никаких кулинарных книг и блокнотов! Храни все любимые рецепты в одном месте.',
                      style: TextStyle(
                        
                      ),),
                      Row(
                        children: [
                          SizedBox(height: 58,),
                          Container(
                            width: 278, 
                            height: 60, 
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)
                                )
                              ), 
                              ),
                              onPressed: (){}, 
                              child: Text(
                                'Добавить рецепт',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                                ),
                                ),
                                ),
                          SizedBox(width: 28,),
                          Container(
                            width: 216,
                            height: 60,
                            child: ElevatedButton(
                              
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)
                                )
                              ), 
                              ),
                              onPressed: (){}, 
                              child: Text(
                                'Войти'
                                ),
                                ),
                                ),
                        ],
                      )
                ],
              ),
            )
          ],
        ),
        // Image.asset("image/flutter.png")
        ],

      ),
    );
  }
}