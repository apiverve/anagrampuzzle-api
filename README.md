# [Anagram Puzzle Generator API](https://apiverve.com/marketplace/anagrampuzzle?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Anagram Puzzle Generator creates word puzzles where players rearrange scrambled letters to form valid words, with optional hints.

The Anagram Puzzle Generator API provides a simple, reliable way to integrate anagram puzzle generator functionality into your applications. Built for developers who need production-ready anagram puzzle generator capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/anagrampuzzle?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/anagrampuzzle?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/anagrampuzzle)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.AnagramPuzzleGenerator)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-anagrampuzzle/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_anagrampuzzle)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/anagrampuzzle)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_anagrampuzzle)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callAnagramPuzzleGeneratorAPI() {
    try {
        const params = new URLSearchParams({
            word: 'listen',
            difficulty: 'medium'
        });

        const response = await fetch(`https://api.apiverve.com/v1/anagrampuzzle?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callAnagramPuzzleGeneratorAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/anagrampuzzle?word=listen&difficulty=medium" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/anagrampuzzle
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/anagrampuzzle) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.AnagramPuzzleGenerator
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.AnagramPuzzleGenerator) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-anagrampuzzle
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-anagrampuzzle/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_anagrampuzzle
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_anagrampuzzle) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/anagrampuzzle
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/anagrampuzzle) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_anagrampuzzle
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_anagrampuzzle) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:anagrampuzzle-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/anagrampuzzle-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Anagram Puzzle Generator API](https://apiverve.com/marketplace/anagrampuzzle?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/anagrampuzzle](https://docs.apiverve.com/ref/anagrampuzzle)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Anagram Puzzle Generator API is commonly used for:

- **Web Applications** - Add anagram puzzle generator features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with anagram puzzle generator capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Anagram Puzzle Generator API:

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

## Support & Community

- 🏠 **API Home**: [Anagram Puzzle Generator API](https://apiverve.com/marketplace/anagrampuzzle?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
