class ReceiptTableHeader {
  ReceiptTableHeader({
    required this.firstColHeader,
    required this.secondColHeader,
    required this.thirdColHeader,
    required this.fourthColHeader,
  });
  final String firstColHeader;
  final String secondColHeader;
  final String thirdColHeader;
  final String fourthColHeader;

  String get tableHeaderHtml => '''
              <theader>
                    <tr>
                        <th class="text-center first-table-cell" style="font-size: 15px;">$firstColHeader</th>
                        <th class="text-center second-table_cell" style="font-size: 15px;">$secondColHeader</th>
                        <th class="text-center custom-table-cell" style="font-size: 15px;">$thirdColHeader</th>
                        <th class="text-center custom-table-cell" style="font-size: 15px;">$fourthColHeader</th>
                    </tr>
              </theader>
    ''';
}
