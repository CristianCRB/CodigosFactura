unit UNTbasededatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Data.DB, dxCustomTileControl, dxTileControl, UNTconn, UntSplash,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxDBEdit, Vcl.StdCtrls;

type
  TFrmbasededatos = class(TForm)
    dxTileControl1: TdxTileControl;
    DtsDBName: TDataSource;
    BtnActualizar: TButton;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    TxtDBNameGlobal: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    TxtDB: TcxDBTextEdit;
    procedure BtnActualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmbasededatos: TFrmbasededatos;

implementation

{$R *.dfm}

procedure TFrmbasededatos.BtnActualizarClick(Sender: TObject);
begin
  DMconn.Modificar;
  DMconn.AplicarDB;
  FrmSplash.LblActualizando.Caption := 'Actualizando';
  FrmSplash.ShowModal;
  ShowMessage('Actualizado Correctamente');
end;

end.
