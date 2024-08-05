import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/generated/l10n.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(
    this.errorMessage,
  );
}

class ServerFailure extends Failure {
  ServerFailure(
    super.errorMessage,
  );

  factory ServerFailure.dioException({
    required DioException dioException,
    required BuildContext context,
    bool isSearchMode = false,
  }) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(S.of(context).errorInternetTimeout);
      case DioExceptionType.sendTimeout:
        return ServerFailure(S.of(context).errorSendTimeout);
      case DioExceptionType.receiveTimeout:
        return ServerFailure(S.of(context).errorReceiveTimeout);
      case DioExceptionType.badCertificate:
        return ServerFailure(S.of(context).errorBadCertificate);
      case DioExceptionType.badResponse:
        return ServerFailure.fromRsponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
          context: context,
          isSearchMode: isSearchMode,
        );
      case DioExceptionType.cancel:
        return ServerFailure(S.of(context).errorCancel);
      case DioExceptionType.connectionError:
        return ServerFailure(S.of(context).errorInternetConnection);
      case DioExceptionType.unknown:
        return ServerFailure(S.of(context).errorUnKnown);
      default:
        if (isSearchMode) {
          return ServerFailure(S.of(context).errorNumSearch);
        } else {
          return ServerFailure(S.of(context).errorNum);
        }
    }
  }
  factory ServerFailure.fromRsponse({
    required int statusCode,
    required  Map<String, dynamic> response,
    required BuildContext context,
    required bool isSearchMode,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      if (isSearchMode) {
        return ServerFailure(response['message']);
      } else {
        return ServerFailure(response['results']['message']);
      }
    } else if (statusCode == 404) {
      return ServerFailure(S.of(context).error404);
    } else if (statusCode == 500) {
      return ServerFailure(S.of(context).error500);
    } else {
      if (isSearchMode) { 
        return ServerFailure(S.of(context).errorNumSearch);
      } else {
        return ServerFailure(S.of(context).errorNum);
      }
    }
  }
}
