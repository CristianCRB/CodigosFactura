unit UntFrmDatosEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxLabel,UNTconn, Vcl.StdCtrls,UntSplash, Data.DB,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFrmDatosEmpresa = class(TFrame)
    PnlDatosGenerales: TPanel;
    PnlDatosTransmision: TPanel;
    LblNombreEmpresa: TcxLabel;
    TxtNombreEmpresa: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    TxtNit: TcxDBTextEdit;
    TxtDireccion: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    TxtTelefonos: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    TxtEmail: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    TxtUsuario: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    TxtClave: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    TxtPrefijo: TcxDBTextEdit;
    TxtResolucion: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    TxtRangoDesde: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    TxtRangoHasta: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    TxtUrlToken: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    TxtUrlFactura: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    TxtUrlPdf: TcxDBTextEdit;
    Button1: TButton;
    cxLabel16: TcxLabel;
    TxtCodigoHelisa: TcxDBTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    TxtQX: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    TxtQY: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    TxtCX: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    TxtCY: TcxDBTextEdit;
    DtsCoordenadas: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TFrmDatosEmpresa.Button1Click(Sender: TObject);
begin
  FrmSplash.LblActualizando.Caption := 'Actualizando Datos';
  FrmSplash.ShowModal;
  DMconn.QryActualizacionDatosEmpresa.Close;
  DMconn.QryActualizacionDatosEmpresa.ParamByName('pResolucion').AsString := TxtResolucion.Text;
  DMconn.QryActualizacionDatosEmpresa.ParamByName('pPrefijo').AsString := TxtPrefijo.Text;
  DMconn.QryActualizacionDatosEmpresa.ParamByName('pURLToken').AsString := TxtUrlToken.Text;
  DMconn.QryActualizacionDatosEmpresa.ParamByName('pURLFactura').AsString := TxtUrlFactura.Text;
  DMconn.QryActualizacionDatosEmpresa.ParamByName('pURLPDF').AsString := TxtUrlFactura.Text;
  DMconn.QryActualizacionDatosEmpresa.ParamByName('pCodigoHelisa').AsString := TxtCodigoHelisa.Text;
  DMconn.QryActualizacionDatosEmpresa.ParamByName('pNit').AsString := TxtNit.Text;
  DMconn.QryActualizaCoor.ParamByName('pCy').AsString := TxtCY.Text;
  DMconn.QryActualizaCoor.ParamByName('pCx').AsString := TxtCX.Text;
  DMconn.QryActualizaCoor.ParamByName('pQy').AsString := TxtQY.Text;
  DMconn.QryActualizaCoor.ParamByName('pQx').AsString := TxtQX.Text;
  DMconn.QryActualizacionDatosEmpresa.ExecSQL();
end;

end.
