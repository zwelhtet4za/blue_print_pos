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
                   <td class="text-center first-table-cell" colspan="1" style="border-top:1px solid #000; font-size: 15px;">$firstValue</td>
                   <td class="text-center second-table_cell" colspan="1" style="border-top:1px solid #000; font-size: 15px;">$secondValue</td>
                   <td class="text-center second-table_cell" colspan="1" style="border-top:1px solid #000; font-size: 15px;"></td>
                   <td class="number custom-table-cell" style="border: 1px solid #000; font-size: 15px;" colspan="1">$totalPrice</td>
                  </tr> 
              </tbody>
    ''';
}
