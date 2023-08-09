class ReceiptTableHeader {
  ReceiptTableHeader({
    required this.itemName,
    required this.qty,
    required this.salesPrice,
    required this.total,
  });

  final String itemName;
  final String qty;
  final String salesPrice;
  final String total;

  String get tableHeaderHtml => '''
    <table class="table">
    <colgroup>
      <col style="width: 40%;">
      <col style="width: 10%;">
      <col style="width: 25%;">
      <col style="width: 25%;">
    </colgroup>
    <tbody>
      <tr>
        <td style="padding: 10px;  border: 1px solid #333;">$itemName</td>
        <td style="padding: 10px;  border: 1px solid #333;">$qty</td>
        <td style="padding: 10px;  border: 1px solid #333;">$salesPrice</td>
        <td style="padding: 10px;  border: 1px solid #333;">$total</td>
      </tr>
    </tbody>
  </table>
    ''';
}
