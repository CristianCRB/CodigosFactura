unit UNTerrorlicencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCustomTileControl, dxTileControl, cxContainer,
  cxEdit, cxLabel, dxGDIPlusClasses, cxImage;

type
  TFrmErrorLicencia = class(TForm)
    dxTileControl1: TdxTileControl;
    cxLabel1: TcxLabel;
    cxImage1: TcxImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmErrorLicencia: TFrmErrorLicencia;

implementation

{$R *.dfm}

end.
