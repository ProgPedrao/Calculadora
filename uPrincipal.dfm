object frmPrincipal: TfrmPrincipal
  Left = 537
  Top = 274
  Caption = 'Calculadora'
  ClientHeight = 219
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 25
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 73
    Height = 25
    Caption = '&Valor 1:'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 73
    Height = 25
    Caption = 'V&alor 2:'
  end
  object Label3: TLabel
    Left = 32
    Top = 104
    Width = 98
    Height = 25
    Caption = '&Resultado:'
  end
  object edtValor1: TEdit
    Left = 160
    Top = 22
    Width = 142
    Height = 33
    TabOrder = 0
    Text = '0'
  end
  object edtValor2: TEdit
    Left = 160
    Top = 61
    Width = 142
    Height = 33
    TabOrder = 1
    Text = '0'
  end
  object edtResultado: TEdit
    Left = 160
    Top = 100
    Width = 142
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = '0'
  end
  object btnSoma: TButton
    Left = 32
    Top = 152
    Width = 54
    Height = 42
    Caption = '+'
    TabOrder = 3
    OnClick = btnSomaClick
  end
  object btnSub: TButton
    Left = 104
    Top = 152
    Width = 54
    Height = 42
    Caption = '-'
    TabOrder = 4
    OnClick = btnSomaClick
  end
  object btnMult: TButton
    Left = 176
    Top = 152
    Width = 54
    Height = 42
    Caption = '*'
    TabOrder = 5
    OnClick = btnSomaClick
  end
  object btnDiv: TButton
    Left = 248
    Top = 152
    Width = 54
    Height = 42
    Caption = '/'
    TabOrder = 6
    OnClick = btnSomaClick
  end
end
