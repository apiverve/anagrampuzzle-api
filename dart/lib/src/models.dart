/// Response models for the Anagram Puzzle Generator API.

/// API Response wrapper.
class AnagrampuzzleResponse {
  final String status;
  final dynamic error;
  final AnagrampuzzleData? data;

  AnagrampuzzleResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AnagrampuzzleResponse.fromJson(Map<String, dynamic> json) => AnagrampuzzleResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AnagrampuzzleData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Anagram Puzzle Generator API.

class AnagrampuzzleData {
  List<AnagrampuzzleDataPuzzlesItem>? puzzles;
  int? count;
  String? difficulty;
  String? html;

  AnagrampuzzleData({
    this.puzzles,
    this.count,
    this.difficulty,
    this.html,
  });

  factory AnagrampuzzleData.fromJson(Map<String, dynamic> json) => AnagrampuzzleData(
      puzzles: (json['puzzles'] as List?)?.map((e) => AnagrampuzzleDataPuzzlesItem.fromJson(e)).toList(),
      count: json['count'],
      difficulty: json['difficulty'],
      html: json['html'],
    );
}

class AnagrampuzzleDataPuzzlesItem {
  String? original;
  String? scrambled;
  List<String>? anagrams;
  int? letterCount;
  String? hint;

  AnagrampuzzleDataPuzzlesItem({
    this.original,
    this.scrambled,
    this.anagrams,
    this.letterCount,
    this.hint,
  });

  factory AnagrampuzzleDataPuzzlesItem.fromJson(Map<String, dynamic> json) => AnagrampuzzleDataPuzzlesItem(
      original: json['original'],
      scrambled: json['scrambled'],
      anagrams: (json['anagrams'] as List?)?.cast<String>(),
      letterCount: json['letterCount'],
      hint: json['hint'],
    );
}

class AnagrampuzzleRequest {
  String? word;
  int? count;
  String? difficulty;

  AnagrampuzzleRequest({
    this.word,
    this.count,
    this.difficulty,
  });

  Map<String, dynamic> toJson() => {
      if (word != null) 'word': word,
      if (count != null) 'count': count,
      if (difficulty != null) 'difficulty': difficulty,
    };
}
