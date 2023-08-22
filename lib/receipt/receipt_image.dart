import 'collection_style.dart';
import 'receipt_text_enum.dart';

class ReceiptLabel {
  ReceiptLabel(
    this.base64data, {
    this.alignment = ReceiptAlignment.center,
    this.width = 120,
    this.height = 300
  });

  final String base64data;
  final int width;
  final int height;
  final ReceiptAlignment alignment;

  String get html => '''
    <div class="$_alignmentStyleHTML">
      <img src ="data:image/png;base64,$base64data" width="$width" height="$height"/>
    </div>
    ''';

  String get _alignmentStyleHTML {
    if (alignment == ReceiptAlignment.left) {
      return CollectionStyle.textLeft;
    } else if (alignment == ReceiptAlignment.right) {
      return CollectionStyle.textRight;
    }
    return CollectionStyle.textCenter;
  }
}
