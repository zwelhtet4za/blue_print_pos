import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

class Receipt3ColsText {
  Receipt3ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.thirdCol,
    required this.paperSize,
    this.secondColAlignLeft,
    required this.properties,
  });

  final String firstCol;
  final String secondCol;
  bool? secondColAlignLeft;
  final String thirdCol;
  final PaperSize paperSize;
  final String properties;

  String get html {
    if (paperSize == PaperSize.mm80) {
      if (secondColAlignLeft != null) {
        return '''
      <div style="display: flex; flex-direction: row;
        justify-content:  flex-start;">
            <div class="text-normal" style="flex: 1 auto;">$firstCol</div>
            <div class="text-normal" style="flex: 7; text-align: left; margin-left: 20px;">$secondCol</div>
            <div class="text-normal" style="flex: 0 0 auto;">$thirdCol</div>
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
