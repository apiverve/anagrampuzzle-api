Anagram Puzzle Generator API
============

Anagram Puzzle Generator creates word puzzles where players rearrange scrambled letters to form valid words, with optional hints.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Anagram Puzzle Generator API](https://apiverve.com/marketplace/api/anagrampuzzle)

---

## Installation
	pip install apiverve-anagrampuzzlegenerator

---

## Configuration

Before using the anagrampuzzle API client, you have to setup your account and obtain your API Key.  
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Usage

The Anagram Puzzle Generator API documentation is found here: [https://docs.apiverve.com/api/anagrampuzzle](https://docs.apiverve.com/api/anagrampuzzle).  
You can find parameters, example responses, and status codes documented here.

### Setup

```
# Import the client module
from apiverve_anagrampuzzlegenerator.apiClient import AnagrampuzzleAPIClient

# Initialize the client with your APIVerve API key
api = AnagrampuzzleAPIClient("[YOUR_API_KEY]")
```

---


### Perform Request
Using the API client, you can perform requests to the API.

###### Define Query

```
query = { "word": "listen", "count": 5, "difficulty": "medium" }
```

###### Simple Request

```
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```
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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.