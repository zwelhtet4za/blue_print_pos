
import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

class ReceiptTextLeftRight {
  ReceiptTextLeftRight(
    {
  
   required  this.leftText,
   required this.rightText,
   required this.paperSize
  });
  final PaperSize paperSize;
  final String leftText;
  final String rightText;

  String get html => '''
    
  ''';
}
