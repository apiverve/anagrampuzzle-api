Anagram Puzzle Generator API
============

Anagram Puzzle Generator creates word puzzles where players rearrange scrambled letters to form valid words, with optional hints.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-anagrampuzzlegenerator.svg)](https://pypi.org/project/apiverve-anagrampuzzlegenerator/)

This is a Python wrapper for the [Anagram Puzzle Generator API](https://apiverve.com/marketplace/anagrampuzzle?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-anagrampuzzlegenerator
```

Using `pip3`:

```bash
pip3 install apiverve-anagrampuzzlegenerator
```

---

## Configuration

Before using the Anagram Puzzle Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_anagrampuzzlegenerator.apiClient import AnagrampuzzleAPIClient

# Initialize the client with your APIVerve API key
api = AnagrampuzzleAPIClient("[YOUR_API_KEY]")

query = {
    "word": "listen",
    "count": 1,
    "difficulty": "medium",
    "image": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Anagram Puzzle Generator API documentation is found here: [https://docs.apiverve.com/ref/anagrampuzzle](https://docs.apiverve.com/ref/anagrampuzzle?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_anagrampuzzlegenerator.apiClient import AnagrampuzzleAPIClient

# Initialize the client with your APIVerve API key
api = AnagrampuzzleAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "word": "listen",
    "count": 1,
    "difficulty": "medium",
    "image": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "puzzles": [
      {
        "original": "DESPAIR",
        "scrambled": "PDAISRE",
        "anagrams": [
          "ASPIRED",
          "DIAPERS"
        ],
        "letterCount": 7
      },
      {
        "original": "GREATS",
        "scrambled": "RSGETA",
        "anagrams": [
          "GASTER",
          "GATERS",
          "GRATES"
        ],
        "letterCount": 6
      },
      {
        "original": "GROANS",
        "scrambled": "SOGNRA",
        "anagrams": [
          "ARGONS"
        ],
        "letterCount": 6
      },
      {
        "original": "BARGEES",
        "scrambled": "ABEREGS",
        "anagrams": [
          "BAREGES"
        ],
        "letterCount": 7
      },
      {
        "original": "CANINES",
        "scrambled": "NISNCEA",
        "anagrams": [
          "ENCINAS"
        ],
        "letterCount": 7
      }
    ],
    "count": 5,
    "difficulty": "medium",
    "html": "<html><head><title>Anagram Puzzle</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 700px; margin: 0 auto;}h1 {text-align: center;}.puzzle {background: #f5f5f5; padding: 25px; margin: 20px 0; border-radius: 10px;}.scrambled {font-size: 32px; font-weight: bold; letter-spacing: 8px; color: #9C27B0; text-align: center; margin: 15px 0;}.letters {display: flex; justify-content: center; gap: 5px; margin: 15px 0;}.letter {width: 40px; height: 40px; background: #fff; border: 2px solid #9C27B0; border-radius: 5px; display: flex; align-items: center; justify-content: center; font-size: 20px; font-weight: bold;}.hint {font-size: 14px; color: #666; font-style: italic; margin-top: 15px;}.info {font-size: 12px; color: #999; margin-top: 10px;}.answer-area {margin-top: 15px; padding: 10px; border: 2px dashed #ccc; border-radius: 5px; min-height: 30px;}</style></head><body><h1>Anagram Puzzle</h1><p style='text-align:center;'>Rearrange the letters to form a word</p><div class='puzzle'><div class='info'>#1 - 7 letters</div><div class='letters'><div class='letter'>P</div><div class='letter'>D</div><div class='letter'>A</div><div class='letter'>I</div><div class='letter'>S</div><div class='letter'>R</div><div class='letter'>E</div></div><div class='answer-area'></div><div class='info'>Bonus: This word has 2 anagram(s)!</div></div><div class='puzzle'><div class='info'>#2 - 6 letters</div><div class='letters'><div class='letter'>R</div><div class='letter'>S</div><div class='letter'>G</div><div class='letter'>E</div><div class='letter'>T</div><div class='letter'>A</div></div><div class='answer-area'></div><div class='info'>Bonus: This word has 3 anagram(s)!</div></div><div class='puzzle'><div class='info'>#3 - 6 letters</div><div class='letters'><div class='letter'>S</div><div class='letter'>O</div><div class='letter'>G</div><div class='letter'>N</div><div class='letter'>R</div><div class='letter'>A</div></div><div class='answer-area'></div><div class='info'>Bonus: This word has 1 anagram(s)!</div></div><div class='puzzle'><div class='info'>#4 - 7 letters</div><div class='letters'><div class='letter'>A</div><div class='letter'>B</div><div class='letter'>E</div><div class='letter'>R</div><div class='letter'>E</div><div class='letter'>G</div><div class='letter'>S</div></div><div class='answer-area'></div><div class='info'>Bonus: This word has 1 anagram(s)!</div></div><div class='puzzle'><div class='info'>#5 - 7 letters</div><div class='letters'><div class='letter'>N</div><div class='letter'>I</div><div class='letter'>S</div><div class='letter'>N</div><div class='letter'>C</div><div class='letter'>E</div><div class='letter'>A</div></div><div class='answer-area'></div><div class='info'>Bonus: This word has 1 anagram(s)!</div></div></body></html>",
    "image": {
      "imageName": "d52a76c7-fe99-498f-b616-ab376cc920a5_anagram.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/anagrampuzzle/d52a76c7-fe99-498f-b616-ab376cc920a5_anagram.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766009991&Signature=cHugsZLx%2BpnY0TrRpTdO%2Bfh48%2Bw8E1zzZt3SNLI2dNgM%2BZj%2FiC%2FZZjvoyahZdBlBkz6pHxuLRX55%2FLszTxTxyhNLJzUcjDOCjoATtWKevbzyLmwaEyFXLDjdzikxUWjVt9g8MyiPEKSFK6%2BpgY6WCvvSeI%2Fox%2B6lQawatWFMB7k0OKSTr9FO%2Fhqqu5M4%2B37bW0zvBuNtcORufXKayE7Z2KcW%2F2wkk9YwGXrVIvn2xLcOYjdY49GAQ2HW0qxRHLDtYYMY6T32jKz1KC6KBLZzrji7v3N%2FVkxfbECzXNgZB5WcCisCoHrUyj7BO14lLr7ZC4XttlYe70ak4QTqa3qNCw%3D%3D",
      "expires": 1766009991438
    }
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `AnagrampuzzleAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_anagrampuzzlegenerator.apiClient import AnagrampuzzleAPIClient, AnagrampuzzleAPIClientError

api = AnagrampuzzleAPIClient("[YOUR_API_KEY]")

query = {
    "word": "listen",
    "count": 1,
    "difficulty": "medium",
    "image": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except AnagrampuzzleAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_anagrampuzzlegenerator.apiClient import AnagrampuzzleAPIClient, AnagrampuzzleAPIClientError

api = AnagrampuzzleAPIClient("[YOUR_API_KEY]")

query = {
    "word": "listen",
    "count": 1,
    "difficulty": "medium",
    "image": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except AnagrampuzzleAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_anagrampuzzlegenerator.apiClient import AnagrampuzzleAPIClient, AnagrampuzzleAPIClientError

query = {
    "word": "listen",
    "count": 1,
    "difficulty": "medium",
    "image": true
}

# Using context manager ensures proper cleanup
with AnagrampuzzleAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except AnagrampuzzleAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_anagrampuzzlegenerator.apiClient import AnagrampuzzleAPIClient

# Enable debug mode
api = AnagrampuzzleAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "word": "listen",
    "count": 1,
    "difficulty": "medium",
    "image": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_anagrampuzzlegenerator.apiClient import AnagrampuzzleAPIClient

api = AnagrampuzzleAPIClient("[YOUR_API_KEY]")

query = {
    "word": "listen",
    "count": 1,
    "difficulty": "medium",
    "image": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
