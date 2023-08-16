class ReceiptTableRow {
  ReceiptTableRow({
    required this.firstCellValue,
    required this.secondCellValue,
    required this.thirdCellValue,
    required this.fourthCellValue,
  });
  final String firstCellValue;
  final String secondCellValue;
  final String thirdCellValue;
  final String fourthCellValue;

  String get tableRowHtml => '''
              <tbody>
                  <tr>
                   <td class="text-left first-table-cell">$firstCellValue</td>
                   <td class="text-center second-table_cell">$secondCellValue</td>
                   <td class="number custom-table-cell">$thirdCellValue</td>
                   <td class="number custom-table-cell">$fourthCellValue</td> 
                  </tr> 
              </tbody>
    ''';
}
