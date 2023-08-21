
import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

import 'receipt_text_enum.dart';

class ReceiptTextLeftRight {
  ReceiptTextLeftRight(
    { 
      required this.size,
   required  this.leftText,
   required this.rightText,
   required this.paperSize,
   required this.properties
  });
  final PaperSize paperSize;
  final String leftText;
  final String rightText;
  final String properties;
  final ReceiptTextSize size;


  String get html => '''
      <div class="$properties">
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold;">$leftText</div>
            <div class="${getReceiptTextSizeHTML(size: size)}" style="font-weight: bold;">$rightText</div>
      </div>
  ''';
}
