import 'package:blue_print_pos/receipt/collection_style.dart';
import 'package:blue_print_pos/receipt/receipt_add_on_2_cols_text.dart';
import 'package:blue_print_pos/receipt/receipt_divider.dart';
import 'package:blue_print_pos/receipt/receipt_image.dart';
import 'package:blue_print_pos/receipt/receipt_table_header.dart';
import 'package:blue_print_pos/receipt/receipt_table_row.dart';
import 'package:blue_print_pos/receipt/receipt_three_cols_text.dart';
import 'package:blue_print_pos/receipt/receipt_two_col_one_cell.dart';
import 'package:esc_pos_utils_plus/esc_pos_utils.dart';
import 'receipt_four_cols_text.dart';
import 'receipt_line.dart';
import 'receipt_one_col_one_cell.dart';
import 'receipt_text.dart';
import 'receipt_text_left_right.dart';
import 'receipt_text_enum.dart';
import 'receipt_title_text.dart';

class ReceiptSectionText {
  ReceiptSectionText();

  String _headerData = '';
  String _receiptTableData = '';
  String _footerData = '';

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
    $_headerData
    <div>
    <table>
    $_receiptTableData
    </table>
    $_footerData
    </div>
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
    $_headerData
    <div>
    $_footerData
    </div>
    </body>
    </html>
    ''';
  }

  void addTitleText(
      {required String text,
      required bool is80,
      required ReceiptAlignment alignment,
      required ReceiptTextSize size}) {
    final ReceiptTitleText receiptTitleText = ReceiptTitleText(
        text: text,
        paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
        alignment: alignment,
        size: size);

    _headerData += receiptTitleText.titleHtml;
  }

  void addText({
    required String text,
    required bool is80,
    required ReceiptAlignment alignment,
    required ReceiptTextSize size,
  }) {
    final ReceiptText receiptText = ReceiptText(
        text: text,
        paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
        size: size,
        alignment: alignment);
    _headerData += receiptText.html;
  }

  void addFooterText(
      {required String text,
      required bool is80,
      required ReceiptAlignment alignment,
      required ReceiptTextSize size}) {
    final ReceiptText receiptText = ReceiptText(
        text: text,
        paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
        size: size,
        alignment: alignment);
    _footerData += receiptText.html;
  }

  void add3Cols(
      {required bool is80,
      required String firstCol,
      required String secondCol,
      required ReceiptTextSize size,
      bool? secondColAlignLeft,
      bool? underLine,
      required String thirdCol}) {
    final Receipt3ColsText receipt3colsText = Receipt3ColsText(
        firstCol: firstCol,
        secondCol: secondCol,
        thirdCol: thirdCol,
        underLine: underLine,
        secondColAlignLeft: secondColAlignLeft,
        size: size,
        paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
        properties: 'justify-between');
    _headerData += receipt3colsText.html;
  }

  void addAddon2Cols(
      {required bool is80,
      required String firstCol,
      required String secondCol,
      required ReceiptTextSize size}) {
    final ReceiptAddon2ColsText receiptAddon2ColsText = ReceiptAddon2ColsText(
        firstCol: firstCol,
        secondCol: secondCol,
        size: size,
        paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
        properties: 'justify-between');
    _headerData += receiptAddon2ColsText.html;
  }

  void add4Cols({
    required bool is80,
    required String firstCol,
    required String secondCol,
    required String thirdCol,
    required String fourthCol,
    required ReceiptTextSize size,
    bool? secondColAlignLeft,
  }) {
    final Receipt4ColsText receipt4colsText = Receipt4ColsText(
        firstCol: firstCol,
        secondCol: secondCol,
        thirdCol: thirdCol,
        fourthCol: fourthCol,
        size: size,
        secondColAlignLeft: secondColAlignLeft,
        paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
        properties: 'justify-between');
    _headerData += receipt4colsText.html;
  }

  void addTableHeader({
    required String firstColHeader,
    required String secondColHeader,
    required String thirdColHeader,
    required String fourthColHeader,
  }) {
    final ReceiptTableHeader tableHeader = ReceiptTableHeader(
      firstColHeader: firstColHeader,
      secondColHeader: secondColHeader,
      thirdColHeader: thirdColHeader,
      fourthColHeader: fourthColHeader,
    );
    _receiptTableData += tableHeader.tableHeaderHtml;
  }

  void addTableRow({
    required String firstCellValue,
    required String secondCellValue,
    required String thirdCellValue,
    required String fourthCellValue,
  }) {
    final ReceiptTableRow tableRow = ReceiptTableRow(
        firstCellValue: firstCellValue,
        secondCellValue: secondCellValue,
        thirdCellValue: thirdCellValue,
        fourthCellValue: fourthCellValue);
    _receiptTableData += tableRow.tableRowHtml;
  }

  void add2Col1CellTableRow({
    required String firstValue,
    required String secondValue,
    required String totalPrice,
  }) {
    final ReceiptTotalTwoColsOneCell twoColOneCellRow =
        ReceiptTotalTwoColsOneCell(
            firstValue: firstValue,
            secondValue: secondValue,
            totalPrice: totalPrice);
    _receiptTableData += twoColOneCellRow.twoColsOneCellHTML;
  }

  void add1Col1CellTableRow({
    required String value,
    required String totalPrice,
  }) {
    final ReceiptTotalOneColOneCell twoColOneCellRow =
        ReceiptTotalOneColOneCell(value: value, totalPrice: totalPrice);
    _receiptTableData += twoColOneCellRow.twoColsOneCellHTML;
  }

  void addLeftRightText(
      {required String leftText,
      required String rightText,
      required ReceiptTextSize size,
      required bool is80}) {
    final ReceiptTextLeftRight leftRightText = ReceiptTextLeftRight(
      leftText: leftText,
      rightText: rightText,
      size: size,
      properties: 'justify-between',
      paperSize: is80 ? PaperSize.mm80 : PaperSize.mm58,
    );
    _headerData += leftRightText.html;
  }

  void addFooterSpacer({int count = 1, bool useDashed = false}) {
    final ReceiptLine line = ReceiptLine(count: count, useDashed: useDashed);
    _footerData += line.html;
  }

  void addSpacer({int count = 1, bool useDashed = false}) {
    final ReceiptLine line = ReceiptLine(count: count, useDashed: useDashed);
    _headerData += line.html;
  }

  void divider({required bool isSolid}) {
    final ReceiptDivider divider = ReceiptDivider(isSolid: isSolid);
    _headerData += divider.dividerHTML;
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
    _headerData += image.html;
  }
}
