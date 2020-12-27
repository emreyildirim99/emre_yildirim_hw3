import 'package:emre_yildirim_hw3/Screens/QuizPage.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context, String category) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage(qCategory: category,)),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Cet Quiz - Emre YILDIRIM'),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.blue[650],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover ),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'Welcome to Cet Quiz',
                style: TextStyle(
                  fontSize: 35.0,
                  fontFamily: 'Nexa',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      Container(
        width: 390,
      height: 250 ,
      decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/quizheader2.png'),
          fit: BoxFit.fill ),
    ),
      ),
          Divider(
            color: Colors.white,
            height: 29.0,
          ),
          Center(
            child: Text('Available Categories',style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Nexa',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
          ),
          SizedBox(height: 35.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [RaisedButton(
              onPressed: () {gotoQuizPage(context,'capitals');},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child:
                const Text('Capitals Quiz', style: TextStyle(fontSize: 20)),
              ),
            ),
              SizedBox(height: 185.0),
              RaisedButton(
                onPressed: () {gotoQuizPage(context,'math');},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF00b09b),
                        Color(0xFF96c93d),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child:
                  const Text('Math Quiz', style: TextStyle(fontSize: 20)),
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