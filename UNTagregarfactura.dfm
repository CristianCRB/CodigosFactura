object FrmAgregarFactura: TFrmAgregarFactura
  Left = 0
  Top = 0
  Caption = 'Agregar Factura'
  ClientHeight = 272
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxTileControl1: TdxTileControl
    Left = 0
    Top = 0
    Width = 402
    Height = 272
    TabOrder = 10
    ExplicitLeft = 384
    ExplicitTop = 144
    ExplicitWidth = 400
    ExplicitHeight = 300
  end
  object BtnAceptar: TcxButton
    Left = 104
    Top = 211
    Width = 75
    Height = 41
    Caption = 'Aceptar'
    TabOrder = 0
    OnClick = BtnAceptarClick
  end
  object BtnCancelar: TcxButton
    Left = 222
    Top = 211
    Width = 75
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = BtnCancelarClick
  end
  object TxtIdDetaTransaccion: TcxDBTextEdit
    Left = 176
    Top = 24
    DataBinding.DataField = 'iddetaTransaccion'
    DataBinding.DataSource = DtsMostrarDatos
    TabOrder = 2
    Width = 121
  end
  object TxtCufe: TcxDBTextEdit
    Left = 176
    Top = 67
    DataBinding.DataField = 'cufe'
    DataBinding.DataSource = DtsMostrarDatos
    TabOrder = 3
    Width = 121
  end
  object TxtEstado: TcxDBTextEdit
    Left = 176
    Top = 112
    DataBinding.DataField = 'estado'
    DataBinding.DataSource = DtsMostrarDatos
    TabOrder = 4
    Width = 121
  end
  object TxtError: TcxDBTextEdit
    Left = 176
    Top = 160
    DataBinding.DataField = 'error'
    DataBinding.DataSource = DtsMostrarDatos
    TabOrder = 5
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 104
    Top = 24
    Caption = 'Factura'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxLabel2: TcxLabel
    Left = 104
    Top = 67
    Caption = 'CUFE'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxLabel3: TcxLabel
    Left = 104
    Top = 112
    Caption = 'Estado'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxLabel4: TcxLabel
    Left = 104
    Top = 160
    Caption = 'Error'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object DtsMostrarDatos: TDataSource
    DataSet = DMconn.CdtsDetaTransaccion
    Left = 24
    Top = 8
  end
end
