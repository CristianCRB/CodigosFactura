unit UNTnc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel,UNTconn,

  {unidades a incluir}
  EncdDecd,IdAuthentication, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,IdGlobal,
  System.JSON,IdServerIOHandler,System.NetEncoding, DebenuPDFLibrary1711,
  dxCustomTileControl, dxTileControl, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, Datasnap.DBClient, SimpleDS, Data.DBXMySQL, Data.DB, Data.FMTBcd,
  Data.SqlExpr, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, cxRadioGroup;
type
  TFrmNC = class(TFrame)
  private
    { Private declarations }

  public
    { Public declarations }
    PDFLibrary: TDebenuPDFLibrary1711;
    UnlockResult: Integer;
    Licencia: WideString;
    Factura: WideString;
    NFactura: WideString;
    QR: WideString;
    CUFE: WideString;
  end;

var
  FrmNC: TFrmNC;

implementation

{$R *.dfm}

end.
