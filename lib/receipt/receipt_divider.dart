class ReceiptDivider {
  ReceiptDivider({required this.isSolid});
  final bool isSolid;

  String get dividerHTML {
    if (isSolid) {
      return '''
       <hr style="border-top: 1px solid #000">
      ''';
    } else {
      return '''
       <hr style="border-top: 1px dotted #000">
      ''';
    }
  }
}
