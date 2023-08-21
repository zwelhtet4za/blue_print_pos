
import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

class ReceiptTextLeftRight {
  ReceiptTextLeftRight(
    {
  
   required  this.leftText,
   required this.rightText,
   required this.paperSize,
   required this.properties
  });
  final PaperSize paperSize;
  final String leftText;
  final String rightText;
  final String properties;

  String get html => '''
      <div class="$properties">
            <div class="text-normal">$leftText</div>
            <div class="text-normal">$rightText</div>
      </div>
  ''';
}
