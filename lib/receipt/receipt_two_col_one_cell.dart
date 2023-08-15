class ReceiptTotalTwoColsOneCell {
  ReceiptTotalTwoColsOneCell({
    required this.firstValue,
    required this.secondValue,
    required this.totalPrice,
  });
  final String firstValue;
  final String secondValue;
  final String totalPrice;

  String get twoColsOneCellHTML => '''
              <tbody>
                  <tr>
                   <td class="text-center first-table-cell" colspan="1" style="border-top:1px solid #000;">$firstValue</td>
                   <td class="text-center second-table_cell" colspan="2" style="border-top:1px solid #000;">$secondValue</td>
                   <td class="text-center custom-table-cell" style="border: 1px solid #000;" colspan="1">$totalPrice</td>
                  </tr> 
              </tbody>
    ''';
}
