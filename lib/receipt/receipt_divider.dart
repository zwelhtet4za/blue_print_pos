class ReceiptDivider {
  ReceiptDivider({required this.isSolid});
   final bool isSolid;

  String get dividerHTML {
    if(isSolid){
      return '''
      <hr class="divider-solid">
      ''';
    } else {
      return '''
      <hr class="divider-dotted">
      ''';
    }
  }
}