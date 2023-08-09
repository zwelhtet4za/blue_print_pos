// import 'receipt_text_enum.dart';

// class ReceiptTextStyle {
//   const ReceiptTextStyle({
//     this.type = ReceiptTextStyleType.normal,
//     this.size = ReceiptTextSizeType.normal,
//     this.useSpan = false,
//   });

//   /// [type] to define weight of text
//   /// [ReceiptTextStyleType.normal] for normal weight
//   /// [ReceiptTextStyleType.bold] for more weight than normal type
//   final ReceiptTextStyleType type;

//   /// [size] define size of text,
//   final ReceiptTextSizeType size;

//   /// [useSpan] used only for condition left right text
//   final bool useSpan;

//   /// Tag p for normal text, b for bold text and span for left right text
//   /// This getter to get tag of text used
//   String get textStyleHTML {
//     if (useSpan) {
//       return type == ReceiptTextStyleType.normal ? 'span' : 'b';
//     }
//     return type == ReceiptTextStyleType.normal ? 'p' : 'b';
//   }
// }
