object FrmFacturaExp: TFrmFacturaExp
  Left = 0
  Top = 0
  Width = 1024
  Height = 650
  TabOrder = 0
  object dxTileControl1: TdxTileControl
    Left = 0
    Top = 0
    Width = 1024
    Height = 400
    ActionBars.Font.Charset = DEFAULT_CHARSET
    ActionBars.Font.Color = clDefault
    ActionBars.Font.Height = -11
    ActionBars.Font.Name = 'Tahoma'
    ActionBars.Font.Style = []
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Office2010Blue'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clDefault
    Style.Font.Height = -11
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.GradientBeginColor = clWhite
    Style.CheckedItemCheckMarkColor = clBlack
    TabOrder = 0
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clDefault
    Title.Font.Height = -43
    Title.Font.Name = 'Roboto Cn'
    Title.Font.Style = []
    Title.Text = 'Factura Electr'#243'nica Exportaci'#243'n'
  end
  object cxLabel7: TcxLabel
    Left = 49
    Top = 111
    Caption = 'Escoge el prefijo a facturar electr'#243'nicamente'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 49
    Top = 165
    Width = 325
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
    TabOrder = 2
  end
  object RGTipo: TcxRadioGroup
    Left = 405
    Top = 88
    Caption = 'Tipo Comprobante'
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'Factura de Venta Nacional'
      end
      item
        Caption = 'Factura por Contingencia Facturador  '
        Tag = 1
      end
      item
        Caption = 'Factura por Contingencia DIAN  '
        Tag = 2
      end>
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Roboto Cn'
    Style.Font.Style = [fsBold]
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    OnClick = RGTipoClick
    Height = 105
    Width = 248
  end
  object BtnCargarFacturas: TcxButton
    Left = 686
    Top = 88
    Width = 175
    Height = 48
    Cursor = crHandPoint
    Caption = 'Cargar Facturas'
    Colors.NormalText = clBlack
    Colors.DisabledText = clWhite
    Enabled = False
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013LightGray'
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Roboto Cn'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnCargarFacturasClick
  end
  object BtnTransmitir: TcxButton
    Left = 686
    Top = 144
    Width = 175
    Height = 48
    Cursor = crHandPoint
    Caption = 'Transmitir'
    Colors.NormalText = clBlack
    Colors.DisabledText = clWhite
    Enabled = False
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013LightGray'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Roboto Cn'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnTransmitirClick
  end
  object cxButton1: TcxButton
    Left = 917
    Top = 253
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    TabOrder = 6
    Visible = False
    OnClick = cxButton1Click
  end
  object cxLabel6: TcxLabel
    Left = 823
    Top = 227
    Caption = 'url pdf'
    Visible = False
  end
  object cxLabel5: TcxLabel
    Left = 823
    Top = 200
    Caption = 'url xml'
    Visible = False
  end
  object cxLabel4: TcxLabel
    Left = 823
    Top = 173
    Caption = 'url validacion'
    Visible = False
  end
  object TxtUrlPDF: TcxTextEdit
    Left = 895
    Top = 226
    TabOrder = 10
    Visible = False
    Width = 121
  end
  object TxtUrlXML: TcxTextEdit
    Left = 895
    Top = 199
    TabOrder = 11
    Visible = False
    Width = 121
  end
  object TxtUrlVal: TcxTextEdit
    Left = 895
    Top = 172
    TabOrder = 12
    Visible = False
    Width = 121
  end
  object TxtClave: TcxTextEdit
    Left = 895
    Top = 145
    TabOrder = 13
    Visible = False
    Width = 121
  end
  object TxtUsuario: TcxTextEdit
    Left = 895
    Top = 111
    TabOrder = 14
    Visible = False
    Width = 121
  end
  object TxtDocumento: TcxTextEdit
    Left = 897
    Top = 31
    TabOrder = 15
    Visible = False
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 823
    Top = 32
    Caption = 'DOCUMENTO'
    Visible = False
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 400
    Width = 1024
    Height = 250
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto Cn'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
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
      object cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn
        DataBinding.FieldName = 'DOCUMENTO'
      end
      object cxGrid1DBTableView1NOMBRECLIENTE: TcxGridDBColumn
        DataBinding.FieldName = 'NOMBRE CLIENTE'
      end
      object cxGrid1DBTableView1VALORNETO: TcxGridDBColumn
        DataBinding.FieldName = 'VALOR NETO'
      end
      object cxGrid1DBTableView1VALORIVA: TcxGridDBColumn
        DataBinding.FieldName = 'VALOR IVA'
      end
      object cxGrid1DBTableView1MARCADO: TcxGridDBColumn
        DataBinding.FieldName = 'MARCADO'
        OnCustomDrawCell = cxGrid1DBTableView1MarcadoCustomDrawCell
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
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
      '    F.fecha AS FECHA_TASA,'
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
    Top = 200
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
    object QryMaestroFacturasFECHA_TASA: TFIBIntegerField
      FieldName = 'FECHA_TASA'
    end
  end
  object QryDocumentos: TpFIBDataSet
    SelectSQL.Strings = (
      'select TIPO from docuxxxx where MODULO='#39'9'#39' and CLASE='#39'17'#39)
    Transaction = DMconn.TrParticular
    Database = DMconn.DbParticular
    Left = 192
    Top = 200
    object QryDocumentosTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 4
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object DataSource2: TDataSource
    DataSet = QryDocumentos
    Left = 312
    Top = 200
  end
  object QryDatosEmpresa: TSimpleDataSet
    Aggregates = <>
    Connection = DMconn.DBAYT
    DataSet.CommandText = 'select * from datosempresa'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 264
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
    object StringField1: TStringField
      FieldName = 'usuario'
      Size = 45
    end
    object StringField2: TStringField
      FieldName = 'password'
      Size = 45
    end
    object StringField3: TStringField
      FieldName = 'resolucion'
      Size = 45
    end
    object StringField4: TStringField
      FieldName = 'prefijo'
      Size = 45
    end
    object StringField5: TStringField
      FieldName = 'rangoDesde'
      Size = 45
    end
    object StringField6: TStringField
      FieldName = 'rangoHasta'
      Size = 45
    end
    object StringField7: TStringField
      FieldName = 'vigDesde'
      Size = 45
    end
    object StringField8: TStringField
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
    object QryDatosEmpresacodigohelisa: TIntegerField
      FieldName = 'codigohelisa'
    end
    object QryDatosEmpresaurlpdf: TStringField
      FieldName = 'urlpdf'
      Size = 50
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
    Left = 48
    Top = 336
  end
  object QryFacEnviadas: TSimpleDataSet
    Aggregates = <>
    Connection = DMconn.DBAYT
    DataSet.CommandText = 
      'SELECT iddetaTransaccion FROM detatransaccion'#13#10'ORDER BY iddetaTr' +
      'ansaccion'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 408
    object QryFacEnviadasiddetaTransaccion: TStringField
      FieldName = 'iddetaTransaccion'
      Required = True
      Size = 40
    end
  end
  object QryDetallesFactura: TpFIBDataSet
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
    Left = 232
    Top = 352
    object QryDetallesFacturaIDCONCEPTO: TFIBIntegerField
      FieldName = 'IDCONCEPTO'
    end
    object QryDetallesFacturaCANTIDAD: TFIBFloatField
      FieldName = 'CANTIDAD'
    end
    object QryDetallesFacturaUNIDADMEDIDA: TFIBStringField
      FieldName = 'UNIDADMEDIDA'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryDetallesFacturaIMPUESTOLINEA: TFIBFloatField
      FieldName = 'IMPUESTOLINEA'
    end
    object QryDetallesFacturaTASA: TFIBFloatField
      FieldName = 'TASA'
    end
    object QryDetallesFacturaTIPO: TFIBStringField
      FieldName = 'TIPO'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryDetallesFacturaBASEIMPUESTOS: TFIBStringField
      FieldName = 'BASEIMPUESTOS'
      Size = 24
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryDetallesFacturaIDENTIFICACIONPRODUCTOS: TFIBIntegerField
      FieldName = 'IDENTIFICACIONPRODUCTOS'
    end
    object QryDetallesFacturaDESCRIPCION: TFIBStringField
      FieldName = 'DESCRIPCION'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object QryDetallesFacturaPRECIOUNITARIO: TFIBFloatField
      FieldName = 'PRECIOUNITARIO'
    end
    object QryDetallesFacturaIMPORTEDETALLE: TFIBFloatField
      FieldName = 'IMPORTEDETALLE'
    end
    object QryDetallesFacturaIMPORTEIMPUESTO: TFIBFloatField
      FieldName = 'IMPORTEIMPUESTO'
    end
  end
  object CdsFacSinenviar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 352
    object CdsFacSinenviarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object CdsFacSinenviarNOMBRECLIENTE: TStringField
      FieldName = 'NOMBRE CLIENTE'
      Size = 50
    end
    object CdsFacSinenviarVALORNETO: TFloatField
      FieldName = 'VALOR NETO'
    end
    object CdsFacSinenviarVALORIVA: TFloatField
      FieldName = 'VALOR IVA'
    end
    object CdsFacSinenviarMARCADO: TWordField
      FieldName = 'MARCADO'
    end
  end
  object DataSource1: TDataSource
    DataSet = CdsFacSinenviar
    Left = 424
    Top = 352
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
    Left = 552
    Top = 352
    object QryNumerosLetrasvalor: TStringField
      FieldName = 'valor'
      Size = 255
    end
  end
  object ImgMarcas: TcxImageList
    FormatVersion = 1
    DesignInfo = 23069336
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
  object DBConnLocal: TFDConnection
    Params.Strings = (
      'Database=aytdb'
      'User_Name=root'
      'Password=N@cO6z6'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 520
    Top = 248
  end
  object FDTransaction1: TFDTransaction
    Connection = DBConnLocal
    Left = 616
    Top = 248
  end
  object QryDatoResolucion: TFDQuery
    Connection = DBConnLocal
    SQL.Strings = (
      
        'select idResolucion from datosresolucion where prefijo = :pPrefi' +
        'jo')
    Left = 712
    Top = 248
    ParamData = <
      item
        Name = 'PPREFIJO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QryDatoResolucionidResolucion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'idResolucion'
      Origin = 'idResolucion'
      Size = 50
    end
  end
  object QryCoordenadas: TFDQuery
    Connection = DBConnLocal
    SQL.Strings = (
      'select * from coordenadasfact')
    Left = 712
    Top = 200
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
  object DBConnGlobal: TFDConnection
    Params.Strings = (
      'Database=C:\PROAsistemas\Helisa NIIF\HELISABD.HGW'
      'User_Name=HELISAADMON'
      'Password=U8JKR@fC'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 496
    Top = 312
  end
  object FDTransaction2: TFDTransaction
    Connection = DBConnLocal
    Left = 608
    Top = 312
  end
  object QryTasaCambio: TFDQuery
    Connection = DBConnGlobal
    SQL.Strings = (
      'SELECT TASA_CAMBIO FROM TIPOCAMB WHERE FECHA = :pFecha')
    Left = 696
    Top = 312
    ParamData = <
      item
        Name = 'PFECHA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QryTasaCambioTASA_CAMBIO: TFloatField
      FieldName = 'TASA_CAMBIO'
      Origin = 'TASA_CAMBIO'
    end
  end
end
