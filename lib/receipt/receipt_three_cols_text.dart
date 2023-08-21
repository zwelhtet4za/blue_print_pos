import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

import 'receipt_text_enum.dart';

class Receipt3ColsText {
  Receipt3ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.thirdCol,
    required this.paperSize,
    this.secondColAlignLeft,
    required this.size,
    required this.properties,
    this.underLine,
  });

  final String firstCol;
  final String secondCol;
  bool? secondColAlignLeft;
  final String thirdCol;
  final PaperSize paperSize;
  final String properties;
  final ReceiptTextSize size;
  bool? underLine = false;

  String get html {
    if (paperSize == PaperSize.mm80) {
      if (secondColAlignLeft != null) {
        return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1;">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 7; text-align: left; margin-left: 20px;">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 0 0 auto;">$thirdCol</div>
      </div>
        '''; 
      } else {
        if (underLine == true) {
          return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="text-decoration: underline; flex: 2">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="text-decoration: underline; flex: 1">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="text-decoration: underline; flex: 0">$thirdCol</div>
      </div>
    ''';
        } else {
          return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 2">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 0">$thirdCol</div>
      </div>
    ''';
        }
      }
    } else if (paperSize == PaperSize.mm58) {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold;flex: 2">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold;flex: 1">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold;flex: 0">$thirdCol</div>
      </div>
    ''';
    } else {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 2">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 1">$secondCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold; flex: 0">$thirdCol</div>
        </div>
    ''';
    }
  }
}
