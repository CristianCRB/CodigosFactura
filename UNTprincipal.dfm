object ForEmpresas: TForEmpresas
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'Empresas'
  ClientHeight = 639
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object dxTileControl1: TdxTileControl
    Left = 0
    Top = 0
    Width = 866
    Height = 639
    Align = alCustom
    TabOrder = 0
    object dxTileControl1Group1: TdxTileControlGroup
      Index = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 432
    Top = 214
    Width = 250
    Height = 120
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object cxGrid1: TcxGrid
    Left = 432
    Top = 8
    Width = 250
    Height = 200
    TabOrder = 2
    Visible = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1CONTADOR: TcxGridDBColumn
        DataBinding.FieldName = 'CONTADOR'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    MasterSource = DataSource2
    PacketRecords = 0
    Params = <>
    Left = 176
    Top = 186
  end
  object DataSource1: TDataSource
    DataSet = DMconn.QryEmpresaGeneral
    Left = 120
    Top = 256
  end
  object DataSource2: TDataSource
    DataSet = DMconn.QryDatosEmpresa
    Left = 120
    Top = 306
  end
end
