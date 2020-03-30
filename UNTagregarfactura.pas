unit UNTagregarfactura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, Vcl.Menus, UNTconn,
  Vcl.StdCtrls, cxButtons, cxDBEdit, Data.DB, cxLabel, dxCustomTileControl,
  dxTileControl;

type
  TFrmAgregarFactura = class(TForm)
    BtnAceptar: TcxButton;
    BtnCancelar: TcxButton;
    TxtIdDetaTransaccion: TcxDBTextEdit;
    TxtCufe: TcxDBTextEdit;
    TxtEstado: TcxDBTextEdit;
    TxtError: TcxDBTextEdit;
    DtsMostrarDatos: TDataSource;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    dxTileControl1: TdxTileControl;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgregarFactura: TFrmAgregarFactura;

implementation

{$R *.dfm}

procedure TFrmAgregarFactura.BtnAceptarClick(Sender: TObject);
begin
  DMconn.Aplicar;
  Close;
end;

procedure TFrmAgregarFactura.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
