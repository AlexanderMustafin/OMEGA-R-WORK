import 'package:flutter/material.dart';

class ProfileCase extends StatelessWidget {
  const ProfileCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(60),
          decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          ),
          width: 700,
          height: 336,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Войдите в профиль', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),),
            SizedBox(height: 30,),
            Text('Добавлять рецепты могут только зарегистрированные пользователи. ',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
            SizedBox(height: 40,),
            Row(children: [
              Container(width: 278,height: 60, child: ElevatedButton(onPressed: (){}, child: Text('Войти', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),), style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber),),),),
              Container(width: 278,height: 60, child: ElevatedButton( onPressed: (){}, child: Text('Регистрация', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.amber)), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)))),
            ],)
          ]),
        ),
      ),
    );
  }
}