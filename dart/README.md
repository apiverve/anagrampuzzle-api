# Anagram Puzzle Generator API - Dart/Flutter Client

Anagram Puzzle Generator creates word puzzles where players rearrange scrambled letters to form valid words, with optional hints.

[![pub package](https://img.shields.io/pub/v/apiverve_anagrampuzzle.svg)](https://pub.dev/packages/apiverve_anagrampuzzle)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Anagram Puzzle Generator API](https://apiverve.com/marketplace/anagrampuzzle?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_anagrampuzzle: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_anagrampuzzle/apiverve_anagrampuzzle.dart';

void main() async {
  final client = AnagrampuzzleClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'word': 'listen',
      'count': 1,
      'difficulty': 'medium'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "puzzles": [
      {
        "original": "LATIGO",
        "scrambled": "TIAGLO",
        "anagrams": [
          "GALIOT"
        ],
        "letterCount": 6,
        "hint": "A strap for tightening a saddle girth. [Western U. S. & Sp. Amer.]"
      },
      {
        "original": "INSTAR",
        "scrambled": "IATRNS",
        "anagrams": [
          "STRAIN"
        ],
        "letterCount": 6,
        "hint": "To stud as with stars. [R.] \"A golden throne instarred with gems.\" J. Barlow."
      },
      {
        "original": "WARISH",
        "scrambled": "SIRAWH",
        "anagrams": [
          "RAWISH"
        ],
        "letterCount": 6,
        "hint": "To protect from the effects of; hence, to cure; to heal. [Obs.] My brother shall"
      },
      {
        "original": "IRONISH",
        "scrambled": "INORHIS",
        "anagrams": [
          "ROINISH"
        ],
        "letterCount": 7,
        "hint": "Resembling iron, as in taste. Wood."
      },
      {
        "original": "RADIOUS",
        "scrambled": "RIADUOS",
        "anagrams": [
          "SAUROID"
        ],
        "letterCount": 7,
        "hint": "1. Consisting of rays, and light. [R.] Berkeley. 2. Radiating; radiant. [Obs.] G"
      }
    ],
    "count": 5,
    "difficulty": "medium",
    "html": "<html><head><title>Anagram Puzzle</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 700px; margin: 0 auto;}h1 {text-align: center;}.puzzle {background: #f5f5f5; padding: 25px; margin: 20px 0; border-radius: 10px;}.scrambled {font-size: 32px; font-weight: bold; letter-spacing: 8px; color: #9C27B0; text-align: center; margin: 15px 0;}.letters {display: flex; justify-content: center; gap: 5px; margin: 15px 0;}.letter {width: 40px; height: 40px; background: #fff; border: 2px solid #9C27B0; border-radius: 5px; display: flex; align-items: center; justify-content: center; font-size: 20px; font-weight: bold;}.hint {font-size: 14px; color: #666; font-style: italic; margin-top: 15px;}.info {font-size: 12px; color: #999; margin-top: 10px;}.answer-area {margin-top: 15px; padding: 10px; border: 2px dashed #ccc; border-radius: 5px; min-height: 30px;}</style></head><body><h1>Anagram Puzzle</h1><p style='text-align:center;'>Rearrange the letters to form a word</p><div class='puzzle'><div class='info'>#1 - 6 letters</div><div class='letters'><div class='letter'>T</div><div class='letter'>I</div><div class='letter'>A</div><div class='letter'>G</div><div class='letter'>L</div><div class='letter'>O</div></div><div class='hint'>Hint: A strap for tightening a saddle girth. [Western U. S. & Sp. Amer.]...</div><div class='answer-area'></div><div class='info'>Bonus: This word has 1 anagram(s)!</div></div><div class='puzzle'><div class='info'>#2 - 6 letters</div><div class='letters'><div class='letter'>I</div><div class='letter'>A</div><div class='letter'>T</div><div class='letter'>R</div><div class='letter'>N</div><div class='letter'>S</div></div><div class='hint'>Hint: To stud as with stars. [R.] 'A golden throne instarred with gems.' J. Barlow....</div><div class='answer-area'></div><div class='info'>Bonus: This word has 1 anagram(s)!</div></div><div class='puzzle'><div class='info'>#3 - 6 letters</div><div class='letters'><div class='letter'>S</div><div class='letter'>I</div><div class='letter'>R</div><div class='letter'>A</div><div class='letter'>W</div><div class='letter'>H</div></div><div class='hint'>Hint: To protect from the effects of; hence, to cure; to heal. [Obs.] My brother shall...</div><div class='answer-area'></div><div class='info'>Bonus: This word has 1 anagram(s)!</div></div><div class='puzzle'><div class='info'>#4 - 7 letters</div><div class='letters'><div class='letter'>I</div><div class='letter'>N</div><div class='letter'>O</div><div class='letter'>R</div><div class='letter'>H</div><div class='letter'>I</div><div class='letter'>S</div></div><div class='hint'>Hint: Resembling iron, as in taste. Wood....</div><div class='answer-area'></div><div class='info'>Bonus: This word has 1 anagram(s)!</div></div><div class='puzzle'><div class='info'>#5 - 7 letters</div><div class='letters'><div class='letter'>R</div><div class='letter'>I</div><div class='letter'>A</div><div class='letter'>D</div><div class='letter'>U</div><div class='letter'>O</div><div class='letter'>S</div></div><div class='hint'>Hint: 1. Consisting of rays, and light. [R.] Berkeley. 2. Radiating; radiant. [Obs.] G...</div><div class='answer-area'></div><div class='info'>Bonus: This word has 1 anagram(s)!</div></div></body></html>"
  }
}
```

## API Reference

- **API Home:** [Anagram Puzzle Generator API](https://apiverve.com/marketplace/anagrampuzzle?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/anagrampuzzle](https://docs.apiverve.com/ref/anagrampuzzle?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
