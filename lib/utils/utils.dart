import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';

Future<ui.Image> rotateImage(ui.Image image, double angle) {
  var pictureRecorder = ui.PictureRecorder();
  Canvas canvas = Canvas(pictureRecorder);

  final double r =
      sqrt(image.width * image.width + image.height * image.height) / 2;
  final alpha = atan(image.height / image.width);
  final beta = alpha + angle;
  final shiftY = r * sin(beta);
  final shiftX = r * cos(beta);
  final translateX = image.width / 2 - shiftX;
  final translateY = image.height / 2 - shiftY;
  canvas.translate(translateX, translateY);
  canvas.rotate(angle);
  canvas.drawImage(image, Offset.zero, Paint());
  return pictureRecorder
      .endRecording()
      .toImage(image.width.toInt(), image.height.toInt());
}
