/// Response models for the Anagram Puzzle Generator API.

/// API Response wrapper.
class AnagrampuzzleResponse {
  final String status;
  final dynamic error;
  final AnagrampuzzleData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AnagrampuzzleResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AnagrampuzzleResponse.fromJson(Map<String, dynamic> json) => AnagrampuzzleResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AnagrampuzzleData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Anagram Puzzle Generator API.

class AnagrampuzzleData {
  List<AnagrampuzzleDataPuzzlesItem>? puzzles;
  num? count;
  String? difficulty;
  String? html;
  AnagrampuzzleDataImage? image;

  AnagrampuzzleData({
    this.puzzles,
    this.count,
    this.difficulty,
    this.html,
    this.image,
  });

  factory AnagrampuzzleData.fromJson(Map<String, dynamic> json) => AnagrampuzzleData(
      puzzles: (json['puzzles'] as List?)?.map((e) => AnagrampuzzleDataPuzzlesItem.fromJson(e)).toList(),
      count: json['count'],
      difficulty: json['difficulty'],
      html: json['html'],
      image: json['image'] != null ? AnagrampuzzleDataImage.fromJson(json['image']) : null,
    );
}

class AnagrampuzzleDataPuzzlesItem {
  String? original;
  String? scrambled;
  List<String>? anagrams;
  num? letterCount;

  AnagrampuzzleDataPuzzlesItem({
    this.original,
    this.scrambled,
    this.anagrams,
    this.letterCount,
  });

  factory AnagrampuzzleDataPuzzlesItem.fromJson(Map<String, dynamic> json) => AnagrampuzzleDataPuzzlesItem(
      original: json['original'],
      scrambled: json['scrambled'],
      anagrams: (json['anagrams'] as List?)?.cast<String>(),
      letterCount: json['letterCount'],
    );
}

class AnagrampuzzleDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  AnagrampuzzleDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory AnagrampuzzleDataImage.fromJson(Map<String, dynamic> json) => AnagrampuzzleDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class AnagrampuzzleRequest {
  String? word;
  int? count;
  String? difficulty;
  bool? image;

  AnagrampuzzleRequest({
    this.word,
    this.count,
    this.difficulty,
    this.image,
  });

  Map<String, dynamic> toJson() => {
      if (word != null) 'word': word,
      if (count != null) 'count': count,
      if (difficulty != null) 'difficulty': difficulty,
      if (image != null) 'image': image,
    };
}
