object fmFuncional: TfmFuncional
  Left = 0
  Top = 0
  Caption = 'Exemplo de PF'
  ClientHeight = 277
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object btnDobrar: TButton
    Left = 5
    Top = 63
    Width = 129
    Height = 33
    Caption = 'Dobrar'
    TabOrder = 1
    OnClick = btnDobrarClick
  end
  object btnFiltraraPares: TButton
    Left = 5
    Top = 119
    Width = 129
    Height = 33
    Caption = 'Filtrar Pares'
    TabOrder = 2
    OnClick = btnFiltraraParesClick
  end
  object btnSomarQuadrados: TButton
    Left = 5
    Top = 175
    Width = 129
    Height = 33
    Caption = 'Somar Quadrados'
    TabOrder = 3
    OnClick = btnSomarQuadradosClick
  end
  object memoResultado: TMemo
    Left = 245
    Top = 23
    Width = 305
    Height = 241
    TabOrder = 5
  end
  object edtEntrada: TEdit
    Left = 5
    Top = 23
    Width = 234
    Height = 23
    TabOrder = 0
    OnKeyPress = edtEntradaKeyPress
  end
  object btnLimpar: TButton
    Left = 5
    Top = 231
    Width = 129
    Height = 33
    Caption = 'Limpar Resultado'
    TabOrder = 4
    OnClick = btnLimparClick
  end
end
