import 'package:blue_print_pos/receipt/collection_style.dart';
import 'package:blue_print_pos/receipt/receipt_divider.dart';
import 'package:blue_print_pos/receipt/receipt_image.dart';
import 'package:blue_print_pos/receipt/receipt_table_header.dart';
import 'package:blue_print_pos/receipt/receipt_table_row.dart';
import 'package:blue_print_pos/receipt/receipt_three_cols_text.dart';
import 'package:esc_pos_utils_plus/esc_pos_utils.dart';
import 'receipt_four_cols_text.dart';
import 'receipt_line.dart';
import 'receipt_text.dart';
import 'receipt_text_left_right.dart';
import 'receipt_text_enum.dart';
import 'receipt_title_text.dart';

class ReceiptSectionText {
  ReceiptSectionText();

  String _data = '';

  String get content80 {
    return '''
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RECEIPT</title>
    </head>
    ${CollectionStyle.style80}
    <body>
    $_data
    </body>
    </html>
    ''';
  }

  String get content58 {
    return '''
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RECEIPT</title>
    </head>
    ${CollectionStyle.style58}
    <body>
    $_data
    </body>
    </html>
    ''';
  }

  void addTitleText(
      {required String text,
      required bool is80,
      required ReceiptAlignment alignment}) {
    final ReceiptTitleText receiptTitleText = ReceiptTitleText(
        text: text,
        paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
        alignment: alignment,
        size: is80 ? ReceiptTextSize.normal : ReceiptTextSize.small);

    _data += receiptTitleText.titleHtml;
  }

  void addText(
      {required String text,
      required bool is80,
      required ReceiptAlignment alignment}) {
    final ReceiptText receiptText = ReceiptText(
        text: text,
        paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
        alignment: alignment);
    _data += receiptText.html;
  }

  void addtableHeader({required bool is80}) {
    final ReceiptTableHeader tableHeader = ReceiptTableHeader(
        itemName: 'ကုန်ပစ္စည်းအမည်',
        qty: 'အမည်',
        salesPrice: 'ရောင်းစျေး',
        total: 'ငွေပေါင်း');
    _data += tableHeader.tableHeaderHtml;
  }

  void add3Cols({required bool is80}) {
    final Receipt3ColsText receipt3colsText = Receipt3ColsText(
        firstCol: 'firstCol',
        secondCol: 'secondCol',
        thirdCol: 'thirdCol',
        properties: 'justify-between');
    _data += receipt3colsText.html;
  }

  void add4Cols({required bool is80}) {
    final Receipt4ColsText receipt4colsText = Receipt4ColsText(
        firstCol: 'firstCol',
        secondCol: 'secondCol',
        thirdCol: 'thirdCol',
        fourthCol: 'fourthCol',
        properties: 'justify-between');
    _data += receipt4colsText.html;
  }

  void addTableRow(
      {required String itemName,
      required String qty,
      required String salePrice,
      required bool is80,
      required String totalPrice}) {
    final ReceiptTableRow tableRow = ReceiptTableRow(
        itemName: itemName, qty: qty, salesPrice: salePrice, total: totalPrice);
    _data += tableRow.tableRowHtml;
  }

  void addLeftRightText(String leftText, String rightText,
      {ReceiptTextSize leftSize = ReceiptTextSize.normal,
      ReceiptTextSize rightSize = ReceiptTextSize.normal,
      required bool is80}) {
    final ReceiptTextLeftRight leftRightText = ReceiptTextLeftRight(
      leftText: leftText,
      rightText: rightText,
    );
    _data += leftRightText.html;
  }

  void addSpacer({int count = 1, bool useDashed = false}) {
    final ReceiptLine line = ReceiptLine(count: count, useDashed: useDashed);
    _data += line.html;
  }

  void divider({required bool isSolid}) {
    final ReceiptDivider divider = ReceiptDivider(isSolid: isSolid);
    _data += divider.dividerHTML;
  }

  void addImage(String base64,
      {int width = 120,
      ReceiptAlignment alignment = ReceiptAlignment.center,
      required bool is80}) {
    final ReceiptImage image = ReceiptImage(
      base64,
      width: width,
      alignment: alignment,
    );
    _data += image.html;
  }
}
