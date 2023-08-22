import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

import 'receipt_text_enum.dart';

class ReceiptText {
  ReceiptText(
      {required this.text, required this.paperSize, required this.size, required this.alignment});

  final String text;
  final PaperSize paperSize;
  final ReceiptAlignment alignment;
  final ReceiptTextSize size;

  String get html {
    if (paperSize == PaperSize.mm80) {
      return '''
      <div class="sub-header ${getReceiptTextSizeHTML(size: size)} ${getReceiptTextAlignMentHTML(alignment: alignment)}">
      <span class="my-3 ">$text</span>
      </div>
    ''';
    } else if (paperSize == PaperSize.mm58) {
      return '''
      <div class="${getReceiptTextSizeHTML(size: size)} ${getReceiptTextAlignMentHTML(alignment: alignment)}">
      <span class="my-3" style="font-weight: bold;">$text</span>
      </div>
    ''';
    } else {
      return '''
      <div class="${getReceiptTextSizeHTML(size: size)} ${getReceiptTextAlignMentHTML(alignment: alignment)}">
      <span class="my-3" style="font-weight: bold;">$text</span>
      </div>
      ''';
    }
  }
}
