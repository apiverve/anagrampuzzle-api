# Anagram Puzzle Generator API - PHP Package

Anagram Puzzle Generator creates word puzzles where players rearrange scrambled letters to form valid words, with optional hints.

## Installation

Install via Composer:

```bash
composer require apiverve/anagrampuzzle
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Anagrampuzzle\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'word' => 'listen',
    'count' => 1,
    'difficulty' => 'medium',
    'image' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Anagrampuzzle\Client;
use APIVerve\Anagrampuzzle\Exceptions\APIException;
use APIVerve\Anagrampuzzle\Exceptions\ValidationException;

try {
    $response = $client->execute(['word' => 'listen', 'count' => 1, 'difficulty' => 'medium', 'image' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/anagrampuzzle?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/anagrampuzzle?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/anagrampuzzle?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
