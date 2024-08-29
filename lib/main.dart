import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/about_dialog_widget.dart';
import 'package:hello_word/alert_dialog_widget.dart';
import 'package:hello_word/alignment_widget.dart';
import 'package:hello_word/column_row.dart';
import 'package:hello_word/container_sizedbox.dart';
import 'package:hello_word/date_time_picker_widget.dart';
import 'package:hello_word/dropdown_button_widget.dart';
import 'package:hello_word/gestur_detector_widget.dart';
import 'package:hello_word/icon_widget.dart';
import 'package:hello_word/image_picker_widget.dart';
import 'package:hello_word/layouting_widget.dart';
import 'package:hello_word/main_page.dart';
import 'package:hello_word/navigation_widget.dart';
import 'package:hello_word/padding_widget.dart';
import 'package:hello_word/page_view_widget.dart';
import 'package:hello_word/simple_dialog_widget.dart';
import 'package:hello_word/single_scroll_list_view.dart';
import 'package:hello_word/state_widget.dart';
import 'package:hello_word/text_field_widget.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    yield const LicenseEntryWithLineBreaks(
        <String>['my_package'], '''licensed text''');
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:
          DateTimePickerWidget(), // Ganti disini dengan halaman yang ingin ditampilkan
    );
  }
}
