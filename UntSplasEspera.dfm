object FrmSplasEspera: TFrmSplasEspera
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'splash'
  ClientHeight = 150
  ClientWidth = 400
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 400
    Height = 150
    Align = alClient
    Pen.Color = clHighlight
    ExplicitTop = 40
    ExplicitHeight = 161
  end
  object TxtPassword: TcxTextEdit
    Left = 136
    Top = 48
    Properties.EchoMode = eemPassword
    TabOrder = 0
    Text = 'TxtPassword'
    Width = 121
  end
  object Button1: TButton
    Left = 64
    Top = 96
    Width = 75
    Height = 33
    Caption = 'Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto Cn'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 96
    Width = 75
    Height = 33
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto Cn'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
end
