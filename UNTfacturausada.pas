unit UNTfacturausada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxCustomTileControl, dxTileControl, UNTconn, UNTagregarfactura,
  Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TFrmFacturaUsada = class(TFrame)
    dxTileControl1: TdxTileControl;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DBNavigator1: TDBNavigator;
    BtnAgregar: TcxButton;
    DtsMostrarDatos: TDataSource;
    cxGridDBTableView1iddetaTransaccion: TcxGridDBColumn;
    cxGridDBTableView1xml: TcxGridDBColumn;
    cxGridDBTableView1cufe: TcxGridDBColumn;
    cxGridDBTableView1estado: TcxGridDBColumn;
    cxGridDBTableView1error: TcxGridDBColumn;
    BtnModificar: TcxButton;
    BtnEliminar: TcxButton;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    procedure BtnAgregarClick(Sender: TObject);
    procedure BtnModificarClick(Sender: TObject);
    procedure BtnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrmFacturaUsada.BtnAgregarClick(Sender: TObject);
var
FrmAgregar:TFrmAgregarFactura;
begin
  DMconn.Nuevo;
  FrmAgregar := TFrmAgregarFactura.Create(Application);
  FrmAgregar.ShowModal;
end;

procedure TFrmFacturaUsada.BtnEliminarClick(Sender: TObject);
begin
  if MessageDlg('�Desea Eliminarlo?', mtConfirmation, mbYesNo, 0) = 6 then
  begin
    DMconn.Eliminar;
  end;
end;

procedure TFrmFacturaUsada.BtnModificarClick(Sender: TObject);
var
FrmAgregar:TFrmAgregarFactura;
begin
  DMconn.Modificar;
  FrmAgregar := TFrmAgregarFactura.Create(Application);
  FrmAgregar.ShowModal;
end;

end.
