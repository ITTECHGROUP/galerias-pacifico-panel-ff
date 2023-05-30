import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ProcessInvoiceCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? base64InvoiceImage = '',
  }) {
    final body = '''
{
  "token": "${token}",
  "base64InvoiceImage": "${base64InvoiceImage}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Process Invoice',
      apiUrl: 'http://161.97.74.168:8080/processInvoice',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic totales(dynamic response) => getJsonField(
        response,
        r'''$.totales''',
        true,
      );
  static dynamic nombreCliente(dynamic response) => getJsonField(
        response,
        r'''$.nombreCliente''',
      );
  static dynamic localFactura(dynamic response) => getJsonField(
        response,
        r'''$.localFactura''',
      );
  static dynamic fecha(dynamic response) => getJsonField(
        response,
        r'''$.fecha''',
      );
  static dynamic codFactura(dynamic response) => getJsonField(
        response,
        r'''$.codFactura''',
      );
}

class SendEmailCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "widemarketapp@gmail.com",
          "name": "John Doe"
        }
      ],
      "subject": "Cuenta aceptada"
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": "Texto!"
    }
  ],
  "from": {
    "email": "jorgehc.2403@gmail.com",
    "name": "Galerías Pacífico"
  },
  "reply_to": {
    "email": "jorgehc.2403@gmail.com",
    "name": "Galerías Pacífico"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendEmail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
