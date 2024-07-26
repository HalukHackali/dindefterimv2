import 'package:flutter/material.dart';

void main() {
  runApp(FillTBQ());
}

class FillTBQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boşluk Doldurma',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FillInTheBlankQuiz(),
    );
  }
}

class FillInTheBlankQuiz extends StatefulWidget {
  @override
  _FillInTheBlankQuizState createState() => _FillInTheBlankQuizState();
}

class _FillInTheBlankQuizState extends State<FillInTheBlankQuiz> {
  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Flutter bir __________ SDK\'dır.',
      'answer': 'mobil',
    },
    {
      'question': 'Dart, Flutter\'ın __________ dilidir.',
      'answer': 'programlama',
    },
    {
      'question': 'Flutter, Google tarafından __________.',
      'answer': 'geliştirildi',
    },
  ];

  final Map<int, TextEditingController> _controllers = {};
  int _score = 0;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < questions.length; i++) {
      _controllers[i] = TextEditingController();
    }
  }

  void _checkAnswers() {
    int score = 0;
    for (int i = 0; i < questions.length; i++) {
      if (_controllers[i]!.text.trim().toLowerCase() == questions[i]['answer']) {
        score++;
      }
    }
    setState(() {
      _score = score;
    });
    _showResultDialog();
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sonuç'),
        content: Text('Toplam Puanınız: $_score / ${questions.length}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Tamam'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    for (int i = 0; i < questions.length; i++) {
      _controllers[i]!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boşluk Doldurma Sınavı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (int i = 0; i < questions.length; i++) _buildQuestion(i),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkAnswers,
              child: const Text('Cevapları Kontrol Et'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestion(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questions[index]['question'],
            style: const TextStyle(fontSize: 18),
          ),
          TextField(
            controller: _controllers[index],
            decoration: const InputDecoration(
              hintText: 'Cevabınızı buraya yazın',
            ),
          ),
        ],
      ),
    );
  }
}
