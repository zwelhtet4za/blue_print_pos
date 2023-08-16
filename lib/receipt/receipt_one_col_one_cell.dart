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
                   <td class="number first-table-cell" colspan="3" style="border: 1px solid #000; font-size: 15px;">$value</td>
                   <td class="number custom-table-cell" style="border: 1px solid #000; font-size: 15px;" colspan="1">$totalPrice</td>
                  </tr> 
              </tbody>
    ''';
}
