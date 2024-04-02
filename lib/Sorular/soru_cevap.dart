import 'package:dindefterimv2/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilgini Sına',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _score = 0;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Peygamberimiz hangi şehirde dünyaya gelmiştir?',
      'answers': [
        {'text': 'Mekke', 'score': 10},
        {'text': 'Medine', 'score': 0},
        {'text': 'Taif', 'score': 0},
        {'text': 'Kudüs', 'score': 0},
      ],
    },
    {
      'questionText': 'Peygamberimizin babasının adı nedir?',
      'answers': [
        {'text': 'Ebu Kasım', 'score': 0},
        {'text': 'Abdulmuttalib', 'score': 0},
        {'text': 'Hz.Hamza', 'score': 0},
        {'text': 'Abdullah', 'score': 10},
      ],
    },
    {
      'questionText': 'Peygamberimiz hangi yıl dünyaya gelmiştir?',
      'answers': [
        {'text': '510', 'score': 0},
        {'text': '610', 'score': 0},
        {'text': '571', 'score': 10},
        {'text': '638', 'score': 0},
      ],
    },
    {
      'questionText': 'Peygamberimizin annesinin adı nedir?',
      'answers': [
        {'text': 'Halime', 'score': 0},
        {'text': 'Zeynep', 'score': 0},
        {'text': 'Amine', 'score': 10},
        {'text': 'Aişe', 'score': 0},
      ],
    },
    // Diğer soruları buraya ekleyin...
  ];

  void _answerQuestion(int score) {
    setState(() {
      _score += score;
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bilgini Sına'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
        questionIndex: _questionIndex,
        questions: _questions,
        answerQuestion: _answerQuestion,
      )
          : Result(score: _score, resetQuiz: _resetQuiz, questions: _questions), // Pass both score and resetQuiz// Pass questions
    );
  }
}

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  const Quiz({
    super.key,
    required this.questionIndex,
    required this.questions,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questions[questionIndex]['questionText'] as String,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => answerQuestion(answer['score'] as int),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(240, 60),
                    textStyle: const TextStyle(fontSize: 22),
                  ),
                  child: Text(
                    answer['text'] as String,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ],
    );
  }
}

class Result extends StatefulWidget {
  final int score;
  final Function resetQuiz;
  final List<Map<String, Object>> questions;


  Result({required this.score, required this.resetQuiz, required this.questions, Key? key}) : super(key: key);
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  late double sonscore = (widget.score / 10);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${widget.questions.length} Soru Cevapladın ve ${widget.score} Puan Aldın',            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
           ElevatedButton(
              onPressed: () => widget.resetQuiz(),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 60),
                textStyle: const TextStyle(fontSize: 22),
              ),
              child: const Text('Yeniden Başlat'),
            ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage(),
                ),
                    (route) => false,
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 60),
              textStyle: const TextStyle(fontSize: 22),
            ),
            child: const Text('Anasayfa'),
          ),
        ],
      ),
    );
  }
}

