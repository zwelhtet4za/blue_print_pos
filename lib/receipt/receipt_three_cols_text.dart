import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

class Receipt3ColsText {
  Receipt3ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.thirdCol,
    required this.paperSize,
    required this.properties,
  });

  final String firstCol;
  final String secondCol;
  final String thirdCol;
  final PaperSize paperSize;
  final String properties;

  String get html {
    if (paperSize == PaperSize.mm80) {
      return '''
      <div class="$properties">
            <div class="text-normal">$firstCol</div>
            <div class="text-normal">$secondCol</div>
            <div class="text-normal">$thirdCol</div>
        </div>
    ''';
    } else if (paperSize == PaperSize.mm58) {
        return '''
      <div class="$properties">
            <div class="text-normal">$firstCol</div>
            <div class="text-normal">$secondCol</div>
            <div class="text-normal">$thirdCol</div>
        </div>
    ''';
    } else {
         return '''
      <div class="$properties">
            <div class="text-normal">$firstCol</div>
            <div class="text-normal">$secondCol</div>
            <div class="text-normal">$thirdCol</div>
        </div>
    ''';
    }
  }
}
