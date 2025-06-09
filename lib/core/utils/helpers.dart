
import 'package:flutter/cupertino.dart';

Size getTextSizeBeforeBuild(String text, TextStyle style, double maxWidth) {
  final TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    maxLines: null,
    textDirection: TextDirection.ltr,
  )..layout(maxWidth: maxWidth);
  return textPainter.size;
}