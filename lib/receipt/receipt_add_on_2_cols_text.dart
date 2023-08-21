import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

class ReceiptAddon2ColsText {
  ReceiptAddon2ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.paperSize,
    required this.properties,
  });

  final String firstCol;
  final String secondCol;
  final PaperSize paperSize;
  final String properties;

  String get html {
    if (paperSize == PaperSize.mm80) {
      return '''
      <div class="$properties">
            <div class="text-normal" style="flex: 1; text-align: left; margin-left: 70px;">$firstCol</div>
            <div class="text-normal">$secondCol</div>
      </div>
    ''';
    } else if (paperSize == PaperSize.mm58) {
      return '''
      <div class="$properties">
            <div class="text-normal" style="flex: 1; text-align: left; margin-left: 50px;">$firstCol</div>
            <div class="text-normal">$secondCol</div>
      </div>
    ''';
    } else {
      return '''
      <div class="$properties">
            <div class="text-normal" style="flex: 1; text-align: left; margin-left: 70px;">$firstCol</div>
            <div class="text-normal">$secondCol</div>
      </div>
    ''';
    }
  }
}
