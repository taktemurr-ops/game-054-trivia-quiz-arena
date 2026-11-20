import 'package:flutter/material.dart';

import '../app/game_api.dart';
import 'quiz_view.dart';
import 'rules.dart';

final gameConfig = GameConfig(
  gameId: 'game-054-trivia-quiz-arena',
  title: const ['Bilgi Yarışması Arenası', 'Trivia Quiz Arena', 'Quiz Arena', 'Arena de Trivia', 'Arène de Quiz'],
  tagline: const ['Genel kültürünü test et, seriyi bozma!', 'Test your knowledge and keep the streak!', 'Teste dein Wissen!', '¡Pon a prueba tu cultura!', 'Testez votre culture !'],
  seedColor: const Color(0xFFE63946),
  icon: Icons.quiz,
  rules: TriviaRules(),
  buildPlay: (ctx) => QuizView(ctx: ctx),
  tutorial: const [
    TutorialStep(Icons.timer, ['Her sorunun kendi süresi var.', 'Every question has its own timer.', 'Jede Frage hat einen Timer.', 'Cada pregunta tiene su tiempo.', 'Chaque question est chronométrée.']),
    TutorialStep(Icons.favorite, ['Yanlış cevap can götürür.', 'A wrong answer costs a life.', 'Falsche Antwort kostet ein Leben.', 'Un error cuesta una vida.', 'Une erreur coûte une vie.']),
    TutorialStep(Icons.filter_2, ['50/50 iki yanlış şıkkı kaldırır.', '50/50 removes two wrong answers.', '50/50 entfernt zwei falsche Antworten.', '50/50 elimina dos respuestas.', '50/50 retire deux réponses.']),
  ],
);
