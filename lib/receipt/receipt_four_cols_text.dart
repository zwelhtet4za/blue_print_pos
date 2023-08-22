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
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1;">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 3; margin-left:10px; margin-right:10px">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1;">$thirdCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 2; text-align: right;">$fourthCol</div>

        </div>
    ''';
    } else if (paperSize == PaperSize.mm58) {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1" >$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$thirdCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 2;text-align: right;">$fourthCol</div>

        </div>
    ''';
    } else {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$thirdCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 2;text-align: right;">$fourthCol</div>

        </div>
    ''';
    }
  }
}
