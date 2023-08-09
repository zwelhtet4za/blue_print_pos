enum ReceiptTextSize { small, normal, large, extraLarge }
enum ReceiptFontWeight { normal, bold }
enum ReceiptAlignment { left, center, right }


String getReceiptTextSizeHTML ({required ReceiptTextSize size}) {
  switch (size){
    case  ReceiptTextSize.small:
    print('on print small');

      return 'text-small';
    case ReceiptTextSize.normal:
    print('on print normal');

      return 'text-normal';
    case ReceiptTextSize.large:
    print('on print large');

      return 'text-large';
    case ReceiptTextSize.extraLarge:
      return 'text-extra-large';
  }
}

String getReceiptFontWeightHTML ({required ReceiptFontWeight weight}) {
  switch (weight) {
    case ReceiptFontWeight.normal:
      return 'p';
    case ReceiptFontWeight.bold:
      return 'b';
  }
}

String getReceiptTextAlignMentHTML ({required ReceiptAlignment alignment}) {
  switch (alignment) {
    case ReceiptAlignment.center:
      return 'text-align-center';
    case ReceiptAlignment.left:
      return 'text-align-left';
    case ReceiptAlignment.right:
      return 'text-align-right';
  }
}