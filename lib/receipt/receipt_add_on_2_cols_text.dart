import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

import 'receipt_text_enum.dart';

class ReceiptAddon2ColsText {
  ReceiptAddon2ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.paperSize,
    required this.properties,
    required this.size,
  });

  final String firstCol;
  final String secondCol;
  final PaperSize paperSize;
  final String properties;
  final ReceiptTextSize size;

  String get html {
    if (paperSize == PaperSize.mm80) {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1; text-align: left; margin-left: 70px;">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}">$secondCol</div>
      </div>
    ''';
    } else if (paperSize == PaperSize.mm58) {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1; text-align: left; margin-left: 50px;font-weight: bold;">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}">$secondCol</div>
      </div>
    ''';
    } else {
      return '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="flex: 1; text-align: left; margin-left: 70px;font-weight: bold;">$firstCol</div>
            <div class="${getReceiptTextSizeHTML(size: size)}">$secondCol</div>
      </div>
    ''';
    }
  }
}
