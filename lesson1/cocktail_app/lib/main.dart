import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cocktailAppModels/src/cocktail.dart';

final image = Image.network('https://klike.net/uploads/posts/2019-11/1574605225_22.jpg', fit: BoxFit.cover);
final closeIcon = Icon(Icons.close, color: Colors.white);
// final text = new Text(Drink.name);

void main() {
  final drink = Drink(
      '''  1  ''',
      '''  scamCocktail  ''',
      '''  scamParty  ''',
      '''  alcoholic  ''',
      '''  bigCup  ''',
      '''  drink it  ''');
  Widget text(cocktailName){
    return Text('коктейл-' + cocktailName,
        style: TextStyle(
            color: Colors.white,   // зеленый цвет текста
            fontSize: 18,
            fontWeight: FontWeight.bold,// высота шрифта 26
            backgroundColor: Colors.black87 ));
  }
  runApp(
      MaterialApp(
          home: Scaffold(
            body: Center(
                child: Container(
                  color: Colors.grey,
                  height: 250,
                  width: 250,
                  child: Stack(
                    alignment: Alignment.center,
                    overflow: Overflow.clip,
                    fit: StackFit.expand,
                    children: [
                      image,
                      Positioned(top: 16, right: 16,
                        child: closeIcon),
                      Align(
                        alignment: Alignment(0.0, 0.8),
                        child: text(drink.name),
                      ),
                    ],
                  ),
                )
            )
          )
      )
  );
}

