object FrmNotaCredito: TFrmNotaCredito
  Left = 0
  Top = 0
  Width = 1024
  Height = 650
  TabOrder = 0
  object dxTileControl1: TdxTileControl
    Left = 0
    Top = 0
    Width = 1024
    Height = 650
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Office2010Blue'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clDefault
    Style.Font.Height = -11
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    TabOrder = 0
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clDefault
    Title.Font.Height = -43
    Title.Font.Name = 'Roboto Cn'
    Title.Font.Style = []
    Title.Text = 'Notas Cr'#233'dito'
  end
  object cxGrid1: TcxGrid
    Left = 512
    Top = 52
    Width = 393
    Height = 296
    Align = alCustom
    BevelOuter = bvNone
    BorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto Cn'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'dxSkinXmas2008Blue'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1documento: TcxGridDBColumn
        DataBinding.FieldName = 'documento'
        Width = 113
      end
      object cxGrid1DBTableView1factura: TcxGridDBColumn
        DataBinding.FieldName = 'factura'
        Width = 89
      end
      object cxGrid1DBTableView1marcado: TcxGridDBColumn
        DataBinding.FieldName = 'marcado'
        OnCustomDrawCell = cxGrid1DBTableView1MarcadoCustomDrawCell
        Width = 88
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object RGEscoge: TcxRadioGroup
    Left = 49
    Top = 205
    Caption = 'Escoge'
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    Properties.Items = <
      item
        Caption = 
          'Devoluci'#243'n de parte de los bienes; no aceptaci'#243'n de partes del s' +
          'ervicio'
        Tag = 1
      end
      item
        Caption = 'Anulaci'#243'n de factura electr'#243'nica'
        Tag = 2
      end
      item
        Caption = 'Rebaja total aplicada'
        Tag = 3
      end
      item
        Caption = 'Descuento total aplicado'
        Tag = 4
      end
      item
        Caption = 'Rescisi'#243'n: nulidad por falta de requisitos'
        Tag = 5
      end
      item
        Caption = 'Otros'
        Tag = 6
      end>
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    OnClick = RGEscogeClick
    Height = 253
    Width = 449
  end
  object TxtDocumento: TcxTextEdit
    Left = 402
    Top = 309
    TabOrder = 2
    Visible = False
    Width = 121
  end
  object TxtUsuario: TcxTextEdit
    Left = 402
    Top = 349
    TabOrder = 3
    Visible = False
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 330
    Top = 350
    Caption = 'usuario'
    Visible = False
  end
  object cxLabel3: TcxLabel
    Left = 330
    Top = 388
    Caption = 'clave'
    Visible = False
  end
  object TxtClave: TcxTextEdit
    Left = 402
    Top = 383
    TabOrder = 7
    Visible = False
    Width = 121
  end
  object TxtUrlVal: TcxTextEdit
    Left = 402
    Top = 410
    TabOrder = 8
    Visible = False
    Width = 121
  end
  object cxLabel4: TcxLabel
    Left = 330
    Top = 411
    Caption = 'url validacion'
    Visible = False
  end
  object cxLabel5: TcxLabel
    Left = 330
    Top = 438
    Caption = 'url xml'
    Visible = False
  end
  object TxtUrlXML: TcxTextEdit
    Left = 402
    Top = 437
    TabOrder = 11
    Visible = False
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 328
    Top = 310
    Caption = 'DOCUMENTO'
    Visible = False
  end
  object BtnCargarFacturas: TcxButton
    Left = 569
    Top = 356
    Width = 292
    Height = 48
    Cursor = crHandPoint
    Caption = 'Cargar Notas Cr'#233'dito'
    Colors.NormalText = clBlack
    Colors.DisabledText = clWhite
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013LightGray'
    TabOrder = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Roboto Cn'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnCargarFacturasClick
  end
  object BtnTransmitir: TcxButton
    Left = 569
    Top = 410
    Width = 292
    Height = 48
    Cursor = crHandPoint
    Caption = 'Transmitir'
    Colors.NormalText = clBlack
    Colors.DisabledText = clWhite
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013LightGray'
    TabOrder = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Roboto Cn'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnTransmitirClick
  end
  object cxButton1: TcxButton
    Left = 426
    Top = 491
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    TabOrder = 15
    Visible = False
    OnClick = cxButton1Click
  end
  object cxLabel6: TcxLabel
    Left = 330
    Top = 465
    Caption = 'url pdf'
    Visible = False
  end
  object TxtUrlPDF: TcxTextEdit
    Left = 402
    Top = 464
    TabOrder = 17
    Visible = False
    Width = 121
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 49
    Top = 104
    Width = 250
    Height = 27
    Cursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Roboto Cn'
    Font.Style = [fsBold]
    Font.Quality = fqClearType
    KeyField = 'TIPO'
    ListField = 'TIPO'
    ListSource = DataSource2
    ParentFont = False
    TabOrder = 18
  end
  object TxtFacturaCorrespondiente: TcxTextEdit
    Left = 49
    Top = 169
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 19
    Width = 250
  end
  object LblEscogePre: TcxLabel
    Left = 49
    Top = 73
    Caption = 'Escoge el prefijo de la nota cr'#233'dito'
    ParentColor = False
    ParentFont = False
    Style.BorderColor = clWindowFrame
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
  end
  object LblDigitarFact: TcxLabel
    Left = 49
    Top = 138
    Caption = 'Digita la factura a la que corresponde la nota cr'#233'dito'
    ParentColor = False
    ParentFont = False
    Style.BorderColor = clBlack
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
  end
  object QryMaestroFacturas: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    SUBSTRING(F.documento FROM 5 FOR 12)AS FOLIO,'
      ''
      '    IIF(C.naturaleza=0, 2,1) AS TIPORECEPTOR,'
      ''
      '    CASE  C.clase'
      '        WHEN '#39'A'#39' THEN 31'
      '        WHEN '#39'C'#39' THEN 13'
      '        WHEN '#39'D'#39' THEN 42'
      '        WHEN '#39'E'#39' THEN 21'
      '        WHEN '#39'I'#39' THEN 50'
      '        WHEN '#39'P'#39' THEN 41'
      '        WHEN '#39'R'#39' THEN 11'
      '        WHEN '#39'T'#39' THEN 12'
      '        WHEN '#39'X'#39' THEN 22'
      '    END AS TIPODOCREC,'
      ''
      '    TRIM(C.identidad) AS NITRECEPTOR,'
      '    C.verificacion AS DIGITOVERIFICACION,'
      ''
      '    CASE COALESCE(C.libre1,'#39#39')'
      '        WHEN '#39#39' THEN '#39'E-99'#39
      '        ELSE c.libre1'
      '    END AS OBLIGACIONESFISCALESRECEPTOR,'
      ''
      '    CASE COALESCE(C.libre2,'#39#39')'
      '        WHEN '#39#39' THEN '#39'01'#39
      '        ELSE C.libre2'
      '    END AS TRIBUTORECEPTOR,'
      ''
      '    CASE COALESCE(C.regimen,'#39#39')'
      '        WHEN '#39'C'#39' THEN '#39'48'#39
      '        WHEN '#39'G'#39' THEN  '#39'48'#39
      '        ELSE 49'
      '    END AS REGIMENRECEPTOR,'
      ''
      '    CASE COALESCE(C.nombre,'#39#39')'
      '        WHEN '#39#39' THEN '#39#39
      '        ELSE C.nombre'
      '    END AS NOMBRERECEPTOR,'
      ''
      '    CASE COALESCE(T.nombre1,'#39#39')'
      '        WHEN '#39#39' THEN '#39#39
      '        else T.nombre1'
      '    END AS PRINOMBRERECEPTORPERSONA,'
      ''
      '    CASE COALESCE(T.nombre2,'#39#39')'
      '        WHEN '#39#39' THEN '#39#39
      '        ELSE T.nombre2'
      '    END AS SEGNOMBRERECEPTORPERSONA,'
      ''
      '    CASE COALESCE(T.apellido1,'#39#39')'
      '        WHEN '#39#39' THEN '#39#39
      '        ELSE T.apellido1'
      '    END AS PRIAPELLIDORECEPTORPERSONA,'
      ''
      '    CASE COALESCE(T.apellido2,'#39#39')'
      '        WHEN '#39#39' THEN '#39#39
      '        ELSE T.apellido2'
      '    END AS SEGAPELLIDORECEPTORPERSONA,'
      ''
      '    IIF(CD.cod_pais=169,'#39'CO'#39','#39#39') AS PAISRECEPTOR,'
      ''
      '    CD.codigo_departamento AS CODIGODEPARTAMENTO,'
      '    CD.nombre AS DEPARTAMENTORECEPTOR,'
      '    CD.codigo AS CODIGOCIUDADRECEPTOR,'
      '    CD.nombre AS CIUDADRECEPTOR,'
      ''
      '    CASE COALESCE(C.apartado,'#39#39')'
      '        WHEN '#39#39' THEN '#39'11001'#39
      '        ELSE C.apartado'
      '    END AS CODIGOPOSTAL,'
      ''
      '    CASE COALESCE(C.direccion,'#39#39')'
      '        WHEN '#39#39' THEN '#39'SIN DIRECCION'#39
      '        ELSE C.direccion'
      '    END AS DIRECCIONRECEPTOR,'
      ''
      '    CASE COALESCE(C.telefonos,'#39#39')'
      '        WHEN '#39#39' THEN '#39'SIN TELEFONO'#39
      '        ELSE C.telefonos'
      '    END AS TELEFONORECEPTOR,'
      ''
      '    CASE COALESCE(c.email,'#39#39')'
      '        WHEN '#39#39' THEN '#39#39
      '        ELSE C.email'
      '    END AS MAILRECEPTOR,'
      ''
      '    HEDATETOSTR(F.fecha,'#39'yyyy-mm-dd'#39') AS FECHA,'
      ''
      
        '    (F.art_total_bruto+F.ser_total_bruto)-(F.art_total_descuento' +
        '+F.ser_total_descuento) AS SUBTOTAL,'
      ''
      '    CASE F.vr_credito'
      '        WHEN 0 THEN  '#39'1'#39
      '        ELSE '#39'2'#39
      '    END AS METODOPAGO,'
      ''
      '    CASE F.vr_credito'
      '        WHEN 0 THEN '#39'10'#39
      '        ELSE '#39'ZZZ'#39
      '    END AS MEDIOPAGO,'
      ''
      '    HEDATETOSTR(F.fecha_vence,'#39'yyyy-mm-dd'#39') AS FECHAVENCIMIENTO,'
      
        '    (F.art_total_iva_gravado+F.ser_total_iva_gravado) AS BASEIMP' +
        'UESTO,'
      
        '    (F.art_total_bruto+F.ser_total_bruto)-(F.art_total_descuento' +
        '+F.ser_total_descuento)+(F.art_total_iva+F.ser_total_iva) AS TOT' +
        'ALSINDESCUENTO,'
      
        '    (F.art_total_iva+F.ser_total_iva+F.art_total_consumo+F.ser_t' +
        'otal_consumo) AS TOTALIMPUESTOS,'
      
        '    (F.total_reteica+F.total_retefuente+F.total_reteiva+F.total_' +
        'retehortif+F.total_bolsaagro) AS TOTALIMPUESTOSRETENIDOS,'
      
        '    (F.art_total_bruto+F.ser_total_bruto)-(F.art_total_descuento' +
        '+F.ser_total_descuento)+(F.art_total_iva+F.ser_total_iva) AS TOT' +
        'AL'
      ''
      'FROM famaxxxx F'
      'INNER JOIN ccma2020 C ON(C.codigo = F.codigo_tercero)'
      'LEFT JOIN temaxxxx T ON(T.identidad = C.identidad)'
      'LEFT JOIN ciudxxxx CD ON(CD.codigo = C.ciudad)'
      'INNER JOIN fatrxxxx FA ON(FA.documento = F.documento)'
      'WHERE F.documento = :pDocumento')
    Transaction = DMconn.TrParticular
    Database = DMconn.DbParticular
    Left = 48
    Top = 528
    object QryMaestroFacturasFOLIO: TFIBStringField
      FieldName = 'FOLIO'
      Size = 12
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasTIPORECEPTOR: TFIBIntegerField
      FieldName = 'TIPORECEPTOR'
    end
    object QryMaestroFacturasTIPODOCREC: TFIBIntegerField
      FieldName = 'TIPODOCREC'
    end
    object QryMaestroFacturasNITRECEPTOR: TFIBStringField
      FieldName = 'NITRECEPTOR'
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasDIGITOVERIFICACION: TFIBStringField
      FieldName = 'DIGITOVERIFICACION'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasOBLIGACIONESFISCALESRECEPTOR: TFIBStringField
      FieldName = 'OBLIGACIONESFISCALESRECEPTOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasTRIBUTORECEPTOR: TFIBStringField
      FieldName = 'TRIBUTORECEPTOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasREGIMENRECEPTOR: TFIBStringField
      FieldName = 'REGIMENRECEPTOR'
      Size = 11
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasNOMBRERECEPTOR: TFIBStringField
      FieldName = 'NOMBRERECEPTOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasPRINOMBRERECEPTORPERSONA: TFIBStringField
      FieldName = 'PRINOMBRERECEPTORPERSONA'
      Size = 30
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasSEGNOMBRERECEPTORPERSONA: TFIBStringField
      FieldName = 'SEGNOMBRERECEPTORPERSONA'
      Size = 30
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasPRIAPELLIDORECEPTORPERSONA: TFIBStringField
      FieldName = 'PRIAPELLIDORECEPTORPERSONA'
      Size = 30
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasSEGAPELLIDORECEPTORPERSONA: TFIBStringField
      FieldName = 'SEGAPELLIDORECEPTORPERSONA'
      Size = 30
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasPAISRECEPTOR: TFIBStringField
      FieldName = 'PAISRECEPTOR'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasCODIGODEPARTAMENTO: TFIBStringField
      FieldName = 'CODIGODEPARTAMENTO'
      Size = 5
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasDEPARTAMENTORECEPTOR: TFIBStringField
      FieldName = 'DEPARTAMENTORECEPTOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasCODIGOCIUDADRECEPTOR: TFIBStringField
      FieldName = 'CODIGOCIUDADRECEPTOR'
      Size = 5
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasCIUDADRECEPTOR: TFIBStringField
      FieldName = 'CIUDADRECEPTOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasCODIGOPOSTAL: TFIBStringField
      FieldName = 'CODIGOPOSTAL'
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasDIRECCIONRECEPTOR: TFIBStringField
      FieldName = 'DIRECCIONRECEPTOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasTELEFONORECEPTOR: TFIBStringField
      FieldName = 'TELEFONORECEPTOR'
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasMAILRECEPTOR: TFIBStringField
      FieldName = 'MAILRECEPTOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasFECHA: TFIBStringField
      FieldName = 'FECHA'
      Size = 80
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasSUBTOTAL: TFIBFloatField
      FieldName = 'SUBTOTAL'
    end
    object QryMaestroFacturasMETODOPAGO: TFIBStringField
      FieldName = 'METODOPAGO'
      Size = 1
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasMEDIOPAGO: TFIBStringField
      FieldName = 'MEDIOPAGO'
      Size = 3
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasFECHAVENCIMIENTO: TFIBStringField
      FieldName = 'FECHAVENCIMIENTO'
      Size = 80
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryMaestroFacturasBASEIMPUESTO: TFIBFloatField
      FieldName = 'BASEIMPUESTO'
    end
    object QryMaestroFacturasTOTALSINDESCUENTO: TFIBFloatField
      FieldName = 'TOTALSINDESCUENTO'
    end
    object QryMaestroFacturasTOTALIMPUESTOS: TFIBFloatField
      FieldName = 'TOTALIMPUESTOS'
    end
    object QryMaestroFacturasTOTALIMPUESTOSRETENIDOS: TFIBFloatField
      FieldName = 'TOTALIMPUESTOSRETENIDOS'
    end
    object QryMaestroFacturasTOTAL: TFIBFloatField
      FieldName = 'TOTAL'
    end
  end
  object QryDatosEmpresa: TSimpleDataSet
    Aggregates = <>
    Connection = DMconn.DBAYT
    DataSet.CommandText = 'select * from datosempresa'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 152
    Top = 528
    object QryDatosEmpresanit: TIntegerField
      FieldName = 'nit'
      Required = True
    end
    object QryDatosEmpresanombreempresa: TStringField
      FieldName = 'nombreempresa'
      Size = 100
    end
    object QryDatosEmpresadireccion: TStringField
      FieldName = 'direccion'
      Size = 100
    end
    object QryDatosEmpresatelefonos: TStringField
      FieldName = 'telefonos'
      Size = 60
    end
    object QryDatosEmpresaciudad: TStringField
      FieldName = 'ciudad'
      Size = 6
    end
    object QryDatosEmpresacorreo: TStringField
      FieldName = 'correo'
      Size = 150
    end
    object QryDatosEmpresausuario: TStringField
      FieldName = 'usuario'
      Size = 45
    end
    object QryDatosEmpresapassword: TStringField
      FieldName = 'password'
      Size = 45
    end
    object QryDatosEmpresaresolucion: TStringField
      FieldName = 'resolucion'
      Size = 45
    end
    object QryDatosEmpresaprefijo: TStringField
      FieldName = 'prefijo'
      Size = 45
    end
    object QryDatosEmpresarangoDesde: TStringField
      FieldName = 'rangoDesde'
      Size = 45
    end
    object QryDatosEmpresarangoHasta: TStringField
      FieldName = 'rangoHasta'
      Size = 45
    end
    object QryDatosEmpresavigDesde: TStringField
      FieldName = 'vigDesde'
      Size = 45
    end
    object QryDatosEmpresavigHasta: TStringField
      FieldName = 'vigHasta'
      Size = 45
    end
    object QryDatosEmpresaurltoken: TStringField
      FieldName = 'urltoken'
      Size = 50
    end
    object QryDatosEmpresaurlfactura: TStringField
      FieldName = 'urlfactura'
      Size = 50
    end
    object QryDatosEmpresaurlpdf: TStringField
      FieldName = 'urlpdf'
      Size = 50
    end
    object QryDatosEmpresacodigohelisa: TIntegerField
      FieldName = 'codigohelisa'
    end
  end
  object QryActualizaEstado: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pDocumento'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pXml'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pCufe'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pEstado'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pError'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'insert into detatransaccion(iddetaTransaccion,xml,cufe,estado,er' +
        'ror)values(:pDocumento,:pXml,:pCufe,:pEstado,:pError)')
    SQLConnection = DMconn.DBAYT
    Left = 256
    Top = 528
  end
  object QryNotasEnviadas: TSimpleDataSet
    Aggregates = <>
    Connection = DMconn.DBAYT
    DataSet.CommandText = 
      'SELECT iddetaTransaccion FROM detatransaccion'#13#10'ORDER BY iddetaTr' +
      'ansaccion'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 352
    Top = 528
    object QryNotasEnviadasiddetaTransaccion: TStringField
      FieldName = 'iddetaTransaccion'
      Required = True
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = CdsNotasSinenviar
    Left = 536
    Top = 528
  end
  object QryDetallesNotas: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    FA.consecutivo AS IDCONCEPTO,'
      '    FA.cantidad AS CANTIDAD,'
      '    '#39'94'#39' AS UNIDADMEDIDA,'
      '    FA.vr_iva AS IMPUESTOLINEA,'
      '    FA.tf_iva AS TASA,'
      ''
      '    IIF(FA.vr_iva = 0, '#39'ZY'#39', '#39'01'#39') AS TIPO,'
      ''
      '    CASE FA.vr_iva'
      '        WHEN 0 THEN '#39'0.00'#39
      '        ELSE FA.vr_total-FA.vr_descuento_total'
      '    END AS BASEIMPUESTOS,'
      ''
      '    FA.codigo_concepto AS IDENTIFICACIONPRODUCTOS,'
      '    FA.texto AS DESCRIPCION,'
      '    FA.vr_unitario AS PRECIOUNITARIO,'
      '    (FA.vr_total-FA.vr_descuento) AS IMPORTEDETALLE,'
      '    FA.vr_iva AS IMPORTEIMPUESTO'
      ''
      'FROM famaxxxx F'
      'LEFT JOIN fatrxxxx FA ON(FA.documento = F.documento)'
      'WHERE F.documento = :pDocumento')
    Transaction = DMconn.TrParticular
    Database = DMconn.DbParticular
    Left = 624
    Top = 528
    object QryDetallesNotasIDCONCEPTO: TFIBIntegerField
      FieldName = 'IDCONCEPTO'
    end
    object QryDetallesNotasCANTIDAD: TFIBFloatField
      FieldName = 'CANTIDAD'
    end
    object QryDetallesNotasUNIDADMEDIDA: TFIBStringField
      FieldName = 'UNIDADMEDIDA'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryDetallesNotasIMPUESTOLINEA: TFIBFloatField
      FieldName = 'IMPUESTOLINEA'
    end
    object QryDetallesNotasTASA: TFIBFloatField
      FieldName = 'TASA'
    end
    object QryDetallesNotasTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryDetallesNotasBASEIMPUESTOS: TFIBStringField
      FieldName = 'BASEIMPUESTOS'
      Size = 24
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryDetallesNotasIDENTIFICACIONPRODUCTOS: TFIBIntegerField
      FieldName = 'IDENTIFICACIONPRODUCTOS'
    end
    object QryDetallesNotasDESCRIPCION: TFIBStringField
      FieldName = 'DESCRIPCION'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryDetallesNotasPRECIOUNITARIO: TFIBFloatField
      FieldName = 'PRECIOUNITARIO'
    end
    object QryDetallesNotasIMPORTEDETALLE: TFIBFloatField
      FieldName = 'IMPORTEDETALLE'
    end
    object QryDetallesNotasIMPORTEIMPUESTO: TFIBFloatField
      FieldName = 'IMPORTEIMPUESTO'
    end
  end
  object QryNumerosLetras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pvalor'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pMoneda'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT numeroletras(:pvalor, :pMoneda) valor')
    SQLConnection = DMconn.DBAYT
    Left = 720
    Top = 16
    object QryNumerosLetrasvalor: TStringField
      FieldName = 'valor'
      Size = 255
    end
  end
  object CdsNotasSinenviar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 528
    object CdsNotasSinenviardocumento: TStringField
      FieldName = 'DOCUMENTO'
      Size = 40
    end
    object CdsNotasSinenviarfactura: TStringField
      FieldName = 'FACTURA'
    end
    object CdsNotasSinenviarmarcado: TWordField
      FieldName = 'MARCADO'
    end
  end
  object ImgMarcas: TcxImageList
    FormatVersion = 1
    DesignInfo = 1049216
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F0F0F492F2F2FE91E1E1E98000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B0B0B38333333FF333333FF333333FF1212125B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B0B0B38323232FC333333FF333333FF333333FF2F2F2FEC0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E0E0E48333333FF333333FF333333FF2F2F2FED333333FF333333FF2424
          24B4000000000000000000000000000000000000000000000000000000000000
          0000333333FF333333FF333333FF252525B90303030F313131F7333333FF3333
          33FF111111530000000000000000000000000000000000000000000000000000
          0000282828C6333333FF222222AB000000020000000018181879333333FF3333
          33FF323232FC0101010700000000000000000000000000000000000000000000
          0000000000021A1A1A8400000001000000000000000000000000282828C93333
          33FF333333FF292929CB00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000070707223232
          32FC333333FF333333FF0F0F0F4A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001515
          156B333333FF333333FF333333FF050505180000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000252525B9333333FF333333FF262626BC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000004040412333333FF333333FF333333FF0707072500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000101010522F2F2FEB1919197D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object QryDocumentos: TpFIBDataSet
    SelectSQL.Strings = (
      'select TIPO from docuxxxx where MODULO='#39'9'#39' and CLASE='#39'19'#39)
    Transaction = DMconn.TrParticular
    Database = DMconn.DbParticular
    Left = 336
    Top = 80
    object QryDocumentosTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 4
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object DataSource2: TDataSource
    DataSet = QryDocumentos
    Left = 424
    Top = 80
  end
  object DBConnLocal: TFDConnection
    Params.Strings = (
      'Database=aytdb'
      'User_Name=root'
      'Password=N@cO6z6'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 744
    Top = 528
  end
  object FDTransaction1: TFDTransaction
    Connection = DBConnLocal
    Left = 840
    Top = 528
  end
  object QryDetaTransaccion: TFDQuery
    Connection = DBConnLocal
    SQL.Strings = (
      
        'select cufe from detaTransaccion where iddetaTransaccion = :pIdF' +
        'inal')
    Left = 928
    Top = 528
    ParamData = <
      item
        Name = 'PIDFINAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QryDetaTransaccioncufe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cufe'
      Origin = 'cufe'
      Size = 250
    end
  end
  object QryCoordenadas: TFDQuery
    Connection = DBConnLocal
    SQL.Strings = (
      'select * from coordenadasfact')
    Left = 928
    Top = 472
    object QryCoordenadascy: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cy'
      Origin = 'cy'
      Size = 5
    end
    object QryCoordenadascx: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cx'
      Origin = 'cx'
      Size = 5
    end
    object QryCoordenadasqy: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'qy'
      Origin = 'qy'
      Size = 5
    end
    object QryCoordenadasqx: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'qx'
      Origin = 'qx'
      Size = 5
    end
  end
end
