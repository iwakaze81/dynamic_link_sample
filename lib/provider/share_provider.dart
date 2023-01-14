import 'dart:developer';
import 'dart:io';

import 'package:dynamic_link_sample/model/food.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

final shareProvider = Provider((ref) => ShareProvider());

class ShareProvider {
  Future<void> shareFood(Food food, BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

    final file = await _getFile(food.image);

    if (kIsWeb) {
      final result = await Share.shareXFiles(
        [file],
        subject: food.name,
        text: food.description,
      );

      log(result.raw);
    } else {
      final result = await Share.shareXFiles(
        [file],
        subject: food.name,
        text: food.description,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
      );

      log(result.raw);
    }
  }

  // asset image to xfile
  Future<XFile> _getFile(String path) async {
    final name = path.split('/').last;
    final byteData = await rootBundle.load(path);

    final file =
        File('${(await getApplicationDocumentsDirectory()).path}/$name');
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return XFile(file.path);
  }
}
