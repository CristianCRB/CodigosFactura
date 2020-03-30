unit UNTestadisticasfact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, Data.DBXMySQL, Data.DB, Datasnap.DBClient, SimpleDS,
  Data.FMTBcd, Data.SqlExpr, Datasnap.Provider;

type
  TFrmEstadisticasFact = class(TFrame)
    DBChart1: TDBChart;
    Series1: TBarSeries;
    CdtsCountDetaTransaccion: TClientDataSet;
    QryCountDetaTransaccion: TSQLQuery;
    DtsCountDetaTransaccion: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UNTconn;

end.
