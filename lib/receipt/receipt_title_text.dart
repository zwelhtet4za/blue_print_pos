import 'package:blue_print_pos/receipt/receipt_text_enum.dart';
import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

class ReceiptTitleText {
  ReceiptTitleText({required this.text, required this.paperSize, required this.size, required this.alignment});

  final String text;
  final PaperSize paperSize;
  final ReceiptTextSize size;
  final ReceiptAlignment alignment;

  String get titleHtml {
    if (paperSize == PaperSize.mm80) {
      return '''
          <div class="header ${getReceiptTextSizeHTML(size: size)} ${getReceiptTextAlignMentHTML(alignment: alignment)}">
            <h1 class="my-3">$text</h1>
          </div>
          ''';
    } else if (paperSize == PaperSize.mm58) {
      return '''
          <div class="header ${getReceiptTextSizeHTML(size: size)} ${getReceiptTextAlignMentHTML(alignment: alignment)}" >
            <h3 class="my-3">$text</h3>
          </div>
          ''';
    } else {
      return '''
          <div class="header ${getReceiptTextSizeHTML(size: size)} ${getReceiptTextAlignMentHTML(alignment: alignment)}">
            <h1 class="my-3">$text</h1>
          </div>
          ''';
    }
  }
}
