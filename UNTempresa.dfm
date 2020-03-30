object FrmDatosEmpresa: TFrmDatosEmpresa
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsNone
  Caption = 'FrmDatosEmpresa'
  ClientHeight = 659
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Pnlpanel1: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 659
    Align = alClient
    AutoSize = True
    TabOrder = 0
    object BtnActualizar: TSpeedButton
      Left = 216
      Top = 496
      Width = 121
      Height = 41
      Caption = 'Actualizar'
      OnClick = BtnActualizarClick
    end
    object BtnCerrar: TSpeedButton
      Left = 0
      Top = 0
      Width = 49
      Height = 49
      Caption = 'Cerrar'
      OnClick = BtnCerrarClick
    end
    object cxLabel2: TcxLabel
      Left = 112
      Top = 41
      Caption = 'NIT/Documento:'
    end
    object TxtNit: TcxDBTextEdit
      Left = 216
      Top = 40
      DataBinding.DataField = 'idEmpresa'
      DataBinding.DataSource = DsDatosEmpresa
      Enabled = False
      TabOrder = 1
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 380
      Top = 41
      Caption = 'DV:'
    end
    object TxtDV: TcxDBTextEdit
      Left = 432
      Top = 40
      DataBinding.DataField = 'digitoVerificacion'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 3
      Width = 25
    end
    object cxLabel4: TcxLabel
      Left = 505
      Top = 41
      Caption = 'Tipo:'
    end
    object cxLabel3: TcxLabel
      Left = 150
      Top = 82
      Caption = 'Nombre:'
    end
    object TxtNombreEmpresa: TcxDBTextEdit
      Left = 216
      Top = 81
      DataBinding.DataField = 'nombreEmpresa'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 6
      Width = 497
    end
    object DBLCtipoPersona: TDBLookupComboBox
      Left = 554
      Top = 41
      Width = 145
      Height = 21
      KeyField = 'idIdentificador'
      ListField = 'nombreIdentificador'
      ListSource = DsTipoIdentificador
      TabOrder = 7
    end
    object cxLabel5: TcxLabel
      Left = 144
      Top = 124
      Caption = 'Direcci'#243'n:'
    end
    object TxtDireccion: TcxDBTextEdit
      Left = 216
      Top = 123
      DataBinding.DataField = 'direccionEmpresa'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 9
      Width = 241
    end
    object cxLabel6: TcxLabel
      Left = 483
      Top = 124
      Caption = 'Tel'#233'fono:'
    end
    object TxtTelefono: TcxDBTextEdit
      Left = 554
      Top = 123
      DataBinding.DataField = 'telefonoEmpresa'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 11
      Width = 145
    end
    object cxLabel7: TcxLabel
      Left = 154
      Top = 167
      Caption = 'Ciudad:'
    end
    object TxtCiudad: TcxDBTextEdit
      Left = 216
      Top = 166
      DataBinding.DataField = 'ciudad'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 13
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 416
      Top = 167
      Caption = 'C'#243'digo Ciudad:'
    end
    object TxtCodCiudad: TcxDBTextEdit
      Left = 514
      Top = 166
      DataBinding.DataField = 'codCiudad'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 15
      Width = 68
    end
    object cxLabel9: TcxLabel
      Left = 118
      Top = 208
      Caption = 'Departamento:'
    end
    object TxtDepartamento: TcxDBTextEdit
      Left = 216
      Top = 207
      DataBinding.DataField = 'departamento'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 17
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 380
      Top = 208
      Caption = 'C'#243'digo Departamento:'
    end
    object TxtCodDepartamento: TcxDBTextEdit
      Left = 514
      Top = 207
      DataBinding.DataField = 'codDepartamento'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 19
      Width = 68
    end
    object cxLabel11: TcxLabel
      Left = 168
      Top = 250
      Caption = 'Pais:'
    end
    object TxtPais: TcxDBTextEdit
      Left = 216
      Top = 249
      DataBinding.DataField = 'pais'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 21
      Width = 121
    end
    object cxLabel12: TcxLabel
      Left = 430
      Top = 250
      Caption = 'C'#243'digo Pais:'
    end
    object TxtCodPais: TcxDBTextEdit
      Left = 514
      Top = 249
      DataBinding.DataField = 'codPais'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 23
      Width = 68
    end
    object cxLabel13: TcxLabel
      Left = 640
      Top = 250
      Caption = 'C'#243'digo Postal:'
    end
    object TxtCodPostal: TcxDBTextEdit
      Left = 740
      Top = 246
      DataBinding.DataField = 'codPostal'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 25
      Width = 68
    end
    object cxLabel14: TcxLabel
      Left = 154
      Top = 292
      Caption = 'Correo:'
    end
    object TxtEmail: TcxDBTextEdit
      Left = 216
      Top = 291
      DataBinding.DataField = 'email'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 27
      Width = 372
    end
    object cxLabel15: TcxLabel
      Left = 146
      Top = 334
      Caption = 'R'#233'gimen:'
    end
    object DBLCtipoRegimen: TDBLookupComboBox
      Left = 216
      Top = 334
      Width = 372
      Height = 21
      KeyField = 'idRegimen'
      ListField = 'nombreRegimen'
      ListSource = DsTipoRegimen
      TabOrder = 29
    end
    object cxLabel16: TcxLabel
      Left = 608
      Top = 334
      Caption = 'Actividad Econ'#243'mica:'
    end
    object TxtActEconomica: TcxDBTextEdit
      Left = 740
      Top = 333
      DataBinding.DataField = 'actividadEconomica'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 31
      Width = 68
    end
    object cxLabel17: TcxLabel
      Left = 47
      Top = 376
      Caption = 'Nombre Representante Legal:'
    end
    object TxtNomRepresentante: TcxDBTextEdit
      Left = 216
      Top = 375
      DataBinding.DataField = 'nombreRepresentante'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 33
      Width = 497
    end
    object cxLabel18: TcxLabel
      Left = 20
      Top = 417
      Caption = 'Identificaci'#243'n Representante Legal:'
    end
    object TxtIdRepresentante: TcxDBTextEdit
      Left = 216
      Top = 416
      DataBinding.DataField = 'idRepresentante'
      DataBinding.DataSource = DsDatosEmpresa
      TabOrder = 35
      Width = 121
    end
  end
  object DsDatosEmpresa: TDataSource
    Left = 30
    Top = 105
  end
  object DsTipoIdentificador: TDataSource
    Left = 30
    Top = 176
  end
  object DsTipoRegimen: TDataSource
    Left = 32
    Top = 248
  end
end
