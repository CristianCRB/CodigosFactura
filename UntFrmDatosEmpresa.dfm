object FrmDatosEmpresa: TFrmDatosEmpresa
  Left = 0
  Top = 0
  Width = 1024
  Height = 472
  TabOrder = 0
  object PnlDatosGenerales: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 154
    Align = alTop
    BevelOuter = bvNone
    BevelWidth = 4
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 0
    object LblNombreEmpresa: TcxLabel
      Left = 39
      Top = 14
      AutoSize = False
      Caption = 'NOMBRE DE LA EMPRESA'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 135
      AnchorX = 174
    end
    object TxtNombreEmpresa: TcxDBTextEdit
      Left = 180
      Top = 13
      DataBinding.DataField = 'nombreempresa'
      DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 269
    end
    object cxLabel1: TcxLabel
      Left = 39
      Top = 37
      AutoSize = False
      Caption = 'Nit'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 135
      AnchorX = 174
    end
    object TxtNit: TcxDBTextEdit
      Left = 180
      Top = 37
      DataBinding.DataField = 'nit'
      DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 117
    end
    object TxtDireccion: TcxDBTextEdit
      Left = 180
      Top = 64
      DataBinding.DataField = 'direccion'
      DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 269
    end
    object cxLabel2: TcxLabel
      Left = 39
      Top = 64
      AutoSize = False
      Caption = 'Direcci'#243'n'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 135
      AnchorX = 174
    end
    object cxLabel3: TcxLabel
      Left = 39
      Top = 91
      AutoSize = False
      Caption = 'Tel'#233'fonos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 135
      AnchorX = 174
    end
    object TxtTelefonos: TcxDBTextEdit
      Left = 180
      Top = 91
      DataBinding.DataField = 'telefonos'
      DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 269
    end
    object cxLabel4: TcxLabel
      Left = 39
      Top = 118
      AutoSize = False
      Caption = 'Email'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 135
      AnchorX = 174
    end
    object TxtEmail: TcxDBTextEdit
      Left = 180
      Top = 118
      DataBinding.DataField = 'correo'
      DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 269
    end
  end
  object PnlDatosTransmision: TPanel
    Left = 0
    Top = 154
    Width = 1024
    Height = 318
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object cxLabel5: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      Caption = 'Configuracion de credenciales'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel6: TcxLabel
      Left = 48
      Top = 32
      AutoSize = False
      Caption = 'Usuario'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 126
      AnchorX = 174
    end
    object TxtUsuario: TcxDBTextEdit
      Left = 180
      Top = 32
      DataBinding.DataField = 'usuario'
      DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 117
    end
    object cxLabel7: TcxLabel
      Left = 329
      Top = 31
      AutoSize = False
      Caption = 'Clave'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 46
      AnchorX = 375
    end
    object TxtClave: TcxDBTextEdit
      Left = 381
      Top = 32
      DataBinding.DataField = 'password'
      DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
      ParentFont = False
      Properties.EchoMode = eemPassword
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 117
    end
    object cxLabel8: TcxLabel
      Left = 48
      Top = 58
      AutoSize = False
      Caption = 'Prefijo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 126
      AnchorX = 174
    end
    object TxtPrefijo: TcxDBTextEdit
      Left = 180
      Top = 58
      DataBinding.DataField = 'prefijo'
      DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Roboto Cn'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 117
    end
    object Button1: TButton
      Left = 180
      Top = 276
      Width = 117
      Height = 37
      Caption = 'Actualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Roboto Medium'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button1Click
    end
  end
  object TxtResolucion: TcxDBTextEdit
    Left = 180
    Top = 238
    DataBinding.DataField = 'resolucion'
    DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 117
  end
  object cxLabel9: TcxLabel
    Left = 48
    Top = 238
    AutoSize = False
    Caption = 'Resoluci'#243'n'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 126
    AnchorX = 174
  end
  object TxtRangoDesde: TcxDBTextEdit
    Left = 180
    Top = 265
    DataBinding.DataField = 'rangoDesde'
    DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 117
  end
  object cxLabel10: TcxLabel
    Left = 48
    Top = 265
    AutoSize = False
    Caption = 'Rango Desde'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 126
    AnchorX = 174
  end
  object TxtRangoHasta: TcxDBTextEdit
    Left = 381
    Top = 263
    DataBinding.DataField = 'rangoHasta'
    DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 117
  end
  object cxLabel11: TcxLabel
    Left = 304
    Top = 264
    AutoSize = False
    Caption = 'Rango Hasta'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 71
    AnchorX = 375
  end
  object TxtUrlToken: TcxDBTextEdit
    Left = 180
    Top = 304
    DataBinding.DataField = 'urltoken'
    DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 8
    Width = 292
  end
  object cxLabel12: TcxLabel
    Left = 48
    Top = 304
    AutoSize = False
    Caption = 'URL Token'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 126
    AnchorX = 174
  end
  object TxtUrlFactura: TcxDBTextEdit
    Left = 180
    Top = 331
    DataBinding.DataField = 'urlfactura'
    DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 10
    Width = 292
  end
  object cxLabel13: TcxLabel
    Left = 48
    Top = 331
    AutoSize = False
    Caption = 'URL Factura'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 126
    AnchorX = 174
  end
  object cxLabel14: TcxLabel
    Left = 48
    Top = 359
    AutoSize = False
    Caption = 'URL PDF Factura'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 126
    AnchorX = 174
  end
  object TxtUrlPdf: TcxDBTextEdit
    Left = 180
    Top = 359
    DataBinding.DataField = 'urlpdf'
    DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 13
    Width = 292
  end
  object cxLabel16: TcxLabel
    Left = 48
    Top = 387
    AutoSize = False
    Caption = 'C'#243'digo Helisa'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 19
    Width = 126
    AnchorX = 174
  end
  object TxtCodigoHelisa: TcxDBTextEdit
    Left = 180
    Top = 387
    DataBinding.DataField = 'codigohelisa'
    DataBinding.DataSource = DMconn.DtsDatosEmpresaAYT
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 15
    Width = 117
  end
  object cxLabel17: TcxLabel
    Left = 548
    Top = 278
    Caption = 'Configuraci'#243'n Coordenadas'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel18: TcxLabel
    Left = 592
    Top = 306
    Caption = 'QX'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object TxtQX: TcxDBTextEdit
    Left = 624
    Top = 306
    DataBinding.DataField = 'qx'
    DataBinding.DataSource = DtsCoordenadas
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 18
    Width = 73
  end
  object cxLabel19: TcxLabel
    Left = 592
    Top = 334
    Caption = 'QY'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object TxtQY: TcxDBTextEdit
    Left = 624
    Top = 333
    DataBinding.DataField = 'qy'
    DataBinding.DataSource = DtsCoordenadas
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 20
    Width = 73
  end
  object cxLabel20: TcxLabel
    Left = 728
    Top = 306
    Caption = 'CX'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object TxtCX: TcxDBTextEdit
    Left = 758
    Top = 305
    DataBinding.DataField = 'cx'
    DataBinding.DataSource = DtsCoordenadas
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 22
    Width = 72
  end
  object cxLabel21: TcxLabel
    Left = 728
    Top = 334
    Caption = 'CY'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object TxtCY: TcxDBTextEdit
    Left = 758
    Top = 332
    DataBinding.DataField = 'cy'
    DataBinding.DataSource = DtsCoordenadas
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 24
    Width = 72
  end
  object DtsCoordenadas: TDataSource
    DataSet = DMconn.CdtsCoordenadas
    Left = 696
    Top = 176
  end
end
