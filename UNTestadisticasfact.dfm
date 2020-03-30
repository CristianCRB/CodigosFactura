object FrmEstadisticasFact: TFrmEstadisticasFact
  Left = 0
  Top = 0
  Width = 707
  Height = 418
  TabOrder = 0
  object DBChart1: TDBChart
    Left = 224
    Top = 75
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'TDBChart')
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      DataSource = CdtsCountDetaTransaccion
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'count(iddetatransaccion)'
    end
  end
  object CdtsCountDetaTransaccion: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DtsCountDetaTransaccion'
    Left = 88
    Top = 200
  end
  object QryCountDetaTransaccion: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select count(iddetatransaccion) from detatransaccion')
    SQLConnection = DMconn.DBAYT
    Left = 88
    Top = 50
  end
  object DtsCountDetaTransaccion: TDataSetProvider
    DataSet = QryCountDetaTransaccion
    Left = 88
    Top = 128
  end
end
