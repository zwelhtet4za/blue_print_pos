class ReceiptTableRow {
  ReceiptTableRow({
    required this.itemName,
    required this.qty,
    required this.salesPrice,
    required this.total,
  });

  final String itemName;
  final String qty;
  final String salesPrice;
  final String total;

  String get tableRowHtml => '''
     <table class="table">
    <colgroup>
      <col style="width: 40%;">
      <col style="width: 10%;">
      <col style="width: 25%;">
      <col style="width: 25%;">
    </colgroup>
    <tbody>
      <tr>
        <td style="padding: 10px;">$itemName</td>
        <td style="padding: 10px;">$qty</td>
        <td style="padding: 10px;">$salesPrice</td>
        <td style="padding: 10px;">$total</td>
      </tr>
    </tbody>
  </table>
    ''';
}
