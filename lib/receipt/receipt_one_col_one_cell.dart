class ReceiptTotalOneColOneCell {
  ReceiptTotalOneColOneCell({
    required this.value,
    required this.totalPrice,
  });
  final String value;
  final String totalPrice;

  String get twoColsOneCellHTML => '''
              <tbody>
                  <tr>
                   <td class="text-center first-table-cell" colspan="3" style="border: 1px solid #000;">$value</td>
                   <td class="text-center custom-table-cell" style="border: 1px solid #000;" colspan="1">$totalPrice</td>
                  </tr> 
              </tbody>
    ''';
}
