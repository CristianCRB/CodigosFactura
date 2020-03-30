unit UNTempresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
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
  dxSkinXmas2008Blue, cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,

  UNTconn, cxTextEdit, cxDBEdit, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, UNTprincipal,
  cxListBox, Vcl.Buttons, UntSplash;

type
  TFrmDatosEmpresa = class(TForm)
    Pnlpanel1: TPanel;
    DsDatosEmpresa: TDataSource;
    cxLabel2: TcxLabel;
    TxtNit: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    TxtDV: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    TxtNombreEmpresa: TcxDBTextEdit;
    DsTipoIdentificador: TDataSource;
    DBLCtipoPersona: TDBLookupComboBox;
    cxLabel5: TcxLabel;
    TxtDireccion: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    TxtTelefono: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    TxtCiudad: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    TxtCodCiudad: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    TxtDepartamento: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    TxtCodDepartamento: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    TxtPais: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    TxtCodPais: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    TxtCodPostal: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    TxtEmail: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    DBLCtipoRegimen: TDBLookupComboBox;
    DsTipoRegimen: TDataSource;
    cxLabel16: TcxLabel;
    TxtActEconomica: TcxDBTextEdit;
    cxLabel17: TcxLabel;
    TxtNomRepresentante: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    TxtIdRepresentante: TcxDBTextEdit;
    BtnActualizar: TSpeedButton;
    BtnCerrar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnActualizarClick(Sender: TObject);
    procedure BtnCerrarClick(Sender: TObject);  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosEmpresa: TFrmDatosEmpresa;

implementation

{$R *.dfm}


procedure TFrmDatosEmpresa.BtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDatosEmpresa.FormCreate(Sender: TObject);
begin
  FrmPrincipal.PnlBarraSuperior.Caption := 'Datos Empresa';
  DBLCtipoPersona.DataField := '';
  DBLCtipoPersona.DataSource := '';
  DBLCtipoRegimen.DataField := '';
  DBLCtipoRegimen.DataSource.Edit := '';
end;

procedure TFrmDatosEmpresa.BtnActualizarClick(Sender: TObject);
begin
  FrmSplash.LblActualizando.Caption := 'Actualizando Datos';
  FrmSplash.ShowModal;
  DMconn.QryActDatosEmpresa.Close;
  DMconn.QryActDatosEmpresa.ParamByName('pDigitoverificacion').AsString := TxtDV.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pidTipo').AsString := DBLCtipoPersona.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pnombreEmpresa').AsString := TxtNombreEmpresa.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pdireccionEmpresa').AsString := TxtDireccion.Text;
  DMconn.QryActDatosEmpresa.ParamByName('ptelefonoEmpresa').AsString := TxtTelefono.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pciudad').AsString := TxtCiudad.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pcodCiudad').AsString := TxtCodCiudad.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pdepartamento').AsString := TxtDepartamento.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pcodDepartamento').AsString := TxtCodDepartamento.Text;
  DMconn.QryActDatosEmpresa.ParamByName('ppais').AsString := TxtPais.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pcodPais').AsString := TxtCodPais.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pcodPostal').AsString := TxtCodPostal.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pemail').AsString := TxtEmail.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pregimen').AsString := DBLCtipoRegimen.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pactividadEconomica').AsString := TxtActEconomica.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pnombreRepresentante').AsString := TxtNomRepresentante.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pidRepresentante').AsString := TxtIdRepresentante.Text;
  DMconn.QryActDatosEmpresa.ParamByName('pidEmpresa').AsString := TxtNit.Text;
  DMconn.QryActDatosEmpresa.ExecSQL();
end;

end.
