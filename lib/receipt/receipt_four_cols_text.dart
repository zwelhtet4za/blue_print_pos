import 'package:esc_pos_utils_plus/esc_pos_utils.dart';

class Receipt4ColsText {
  Receipt4ColsText({
    required this.firstCol,
    required this.secondCol,
    required this.thirdCol,
    required this.fourthCol,
    required this.properties,
    required this.paperSize
  });

  final String firstCol;
  final String secondCol;
  final String thirdCol;
  final String fourthCol;
  final PaperSize paperSize;


  final String properties;

  String get html {
    if (paperSize == PaperSize.mm80) {
      return '''
      <div class="$properties">
            <div class="text-normal">$firstCol</div>
            <div class="text-normal">$secondCol</div>
            <div class="text-normal">$thirdCol</div>
            <div class="text-normal">$fourthCol</div>

        </div>
    ''';
    } else if (paperSize == PaperSize.mm58) {
         return '''
      <div class="$properties">
            <div class="text-normal">$firstCol</div>
            <div class="text-normal">$secondCol</div>
            <div class="text-normal">$thirdCol</div>
            <div class="text-normal">$fourthCol</div>

        </div>
    ''';
    }
  else {
     return '''
      <div class="$properties">
            <div class="text-normal">$firstCol</div>
            <div class="text-normal">$secondCol</div>
            <div class="text-normal">$thirdCol</div>
            <div class="text-normal">$fourthCol</div>

        </div>
    ''';
  }
}
}