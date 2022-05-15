import 'package:another_flushbar/flushbar.dart';
import 'package:app_avaliacao_edusoft/utils/messages/message_theme.dart';
import 'package:flutter/material.dart';


void showMessage(BuildContext context, String msg, MessageTheme theme, {String? title, Widget? button}) => Flushbar(
    title: title,
    messageText: Text(msg, style: const TextStyle(fontSize: 14)),
    margin: const EdgeInsets.all(8),
    borderRadius: BorderRadius.circular(8),
    backgroundColor: theme.backgroundColor,
    icon: theme.icon,
    mainButton: button,
    duration: const Duration(seconds: 5),
    leftBarIndicatorColor: theme.foregroundColor,
  )..show(context);

void showSuccess(BuildContext context, String message) => showMessage(context, message, const MessageTheme.success());

void showInfo(BuildContext context, String message) => showMessage(context, message, const MessageTheme.info());
 
void showWarning(BuildContext context, String message) => showMessage(context, message, const MessageTheme.info());

void showError(BuildContext context, String message) => showMessage(context, message, const MessageTheme.error());

void showRegular(BuildContext context, String message) => showMessage(context, message, const MessageTheme.regular());