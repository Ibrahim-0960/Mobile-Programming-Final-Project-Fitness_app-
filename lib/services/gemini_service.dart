import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class AiException implements Exception {
  AiException(this.messageKey);

  final String messageKey;

  @override
  String toString() => 'AiException($messageKey)';
}

class GeminiService {
  static const String _apiKey =
      String.fromEnvironment('GEMINI_API_KEY', defaultValue: '');

  static const String _model = 'gemini-3.6-flash';
  static const String _baseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models';

  static const String _instructions =
      'You are a friendly fitness assistant inside a mobile app. '
      'Answer in a clear and helpful way. '
      'When listing exercises, give the full list.';

  final http.Client _client;

  GeminiService({http.Client? client}) : _client = client ?? http.Client();

  bool get hasApiKey => _apiKey.isNotEmpty;

  Future<String> ask(String question, {required String languageCode}) async {
    if (!hasApiKey) {
      throw AiException('errorApiKey');
    }

    final uri = Uri.parse('$_baseUrl/$_model:generateContent?key=$_apiKey');

    final languageHint = languageCode == 'ar'
        ? 'Answer in Arabic.'
        : 'Answer in English.';

    final body = jsonEncode({
      'contents': [
        {
          'parts': [
            {
              'text': '$_instructions $languageHint\n\n'
                  'User question: $question',
            }
          ]
        }
      ],
      'generationConfig': {
        'temperature': 0.7,
        'maxOutputTokens': 4096,

      },

    });

    http.Response response;
    try {
      response = await _client
          .post(
            uri,
            headers: {'Content-Type': 'application/json'},
            body: body,
          )
          .timeout(const Duration(seconds: 30));
    } on SocketException {
      throw AiException('errorNoInternet');
    } on TimeoutException {
      throw AiException('errorNoInternet');
    } on http.ClientException {
      throw AiException('errorNoInternet');
    }

    if (response.statusCode != 200) {
      throw AiException('errorApi');
    }

    return _readAnswer(response.body);
  }

  String _readAnswer(String responseBody) {
    try {
      final decoded = jsonDecode(responseBody) as Map<String, dynamic>;

      final candidates = decoded['candidates'] as List<dynamic>?;
      if (candidates == null || candidates.isEmpty) {
        throw AiException('errorEmptyResponse');
      }

      final content = candidates.first['content'] as Map<String, dynamic>?;
      final parts = content?['parts'] as List<dynamic>?;
      if (parts == null || parts.isEmpty) {
        throw AiException('errorEmptyResponse');
      }

      final text = (parts.first['text'] as String?)?.trim() ?? '';
      if (text.isEmpty) {
        throw AiException('errorEmptyResponse');
      }

      return text;
    } on AiException {
      rethrow;
    } catch (_) {
      throw AiException('errorInvalidResponse');
    }
  }
}