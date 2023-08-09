class CollectionStyle {
  CollectionStyle._();

  static String get style80 {
    return '''
    <style>
    * {
        padding: 0;
        margin: 0;
    }
    h1 {
      font-size: 1.3rem;
    }
    p,
    .text-small{
      font-size: 0.6rem;
    }
    .text-normal{
        font-size: 1.0rem;
    }
    .text-large {
      font-size: 1.2rem;
    }
    .text-extra-large {
      font-size: 1.6rem;
    }
    .text-align-left {
      text-align:left;
    }
    .text-align-center {
      text-align:center;
    }
    .text-align-right {
      text-align:right;
    }
    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 1.5rem;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-items: center;
    }
    .my-3 {
        margin: 3px 0;
    }
    .my-7 {
        margin: 3px 0;
    }
    .center {
        text-align: center;
    }
    .header {
        display: flex;
        flex-direction: column;
        justify-items: center;
        margin-top: 20px;
        margin: 0 auto;
    }
    .sub-header {
        display: flex;
        flex-direction: column;
        justify-items: left;
    }
    .divider-solid {
        border-top: 3px solid #bbb;
    }
    
    .divider-dotted {
        border-top: 3px dotted #bbb;
    }
    .phones {
        max-width: 350px;
        border-bottom: 1px solid #000;
    }
    .pb-5 {
        padding-bottom: 5px;
    }
    .py-7 {
        padding: 5px;
    }
    .justify-between {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
    }
    .flex-end {
        display: flex;
        justify-content: flex-end;
    }
    table {
        width: 100%;
    }
    table,
    th,
    td {
        border: 1px solid #000;
        border-collapse: collapse;
    }
    .number {
        text-align: right;
    }
    .text-left {
        text-align: left;
    }
    .text-center {
        text-align: center;
    }
    .table-border-none {
        border: none;
    }
    .count-column {
        width: 30px;
        padding: 7px;
    }
    .name-column {
        width: 120px;
        padding: 7px;
    }
    .same-column {
        width: 70px;
        padding: 7px;
    }
    </style>
    ''';
  }

  static String get style58 {
    return '''
    <style>
    * {
        padding: 0;
        margin: 0;
    }
    h1 {
        font-size: 1.3rem;
    }
    p,
    .text-normal {
        font-size: 0.9rem;
    }
    .text-normal-mm {
        font-size: 0.7rem;
    }
    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 1.5rem;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-items: center;
    }
    .my-3 {
        margin: 3px 0;
    }
    .my-7 {
        margin: 3px 0;
    }
    .center {
        text-align: center;
    }
    .header {
        display: flex;
        flex-direction: column;
        justify-items: center;
        align-items: center;
        margin-top: 20px;
        margin: 0 auto;
    }
    .phones {
        max-width: 350px;
        border-bottom: 1px solid #000;
    }
    .pb-5 {
        padding-bottom: 5px;
    }
    .py-7 {
        padding: 5px;
    }
    .justify-between {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
    }
    .flex-end {
        display: flex;
        justify-content: flex-end;
    }
    table {
        width: 100%;
    }
    table,
    th,
    td {
        border: 1px solid #000;
        border-collapse: collapse;
    }
    .number {
        text-align: right;
    }
    .text-left {
        text-align: left;
    }
    .text-center {
        text-align: center;
    }
    .table-border-none {
        border: none;
    }
    .count-column {
        width: 30px;
        padding: 7px;
    }
    .name-column {
        width: 120px;
        padding: 7px;
    }
    .same-column {
        width: 70px;
        padding: 7px;
    }
    </style>
    ''';
  }

  /// To separate style from all css, just create getter the value of style name
  static String get textCenter => 'text-center';
  static String get textLeft => 'text-left';
  static String get textRight => 'text-right';
}
