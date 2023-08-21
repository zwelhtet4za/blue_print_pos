import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

import 'receipt_text_enum.dart';

class Receipt4ColsText {
  Receipt4ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.thirdCol,
    required this.fourthCol,
    required this.properties,
    required this.size,
    required this.paperSize,
    this.secondColAlignLeft,
  });

  final String firstCol;
  final String secondCol;
  final String thirdCol;
  final String fourthCol;
  final PaperSize paperSize;
  bool? secondColAlignLeft;
  final ReceiptTextSize size;
  final String properties;

  String get html {
    if (paperSize == PaperSize.mm80) {
      if (secondColAlignLeft != null) {
        return '''
<div style="display: flex; flex-direction: row; justify-content: flex-start;">
    <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 0;">$firstCol</div>
    <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1; text-align: left; margin-left: 50px;">$secondCol</div>
    <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 0;">$thirdCol</div>
    <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1; margin-left: 50px;">$fourthCol</div>
</div>''';
      }
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1;">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1;">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1;">$thirdCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1;">$fourthCol</div>

        </div>
    ''';
    } else if (paperSize == PaperSize.mm58) {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1" >$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$thirdCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$fourthCol</div>

        </div>
    ''';
    } else {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$thirdCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$fourthCol</div>

        </div>
    ''';
    }
  }
}
