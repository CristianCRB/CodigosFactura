unit UNTnotacredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, dxTileControl,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxLabel, cxTextEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Data.FMTBcd, Data.SqlExpr, Datasnap.DBClient,
  SimpleDS, Data.DB, FIBDataSet, pFIBDataSet, UNTconn,
  {unidades a incluir}
  EncdDecd,IdAuthentication, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,IdGlobal,
  System.JSON,IdServerIOHandler,System.NetEncoding, DebenuPDFLibrary1711,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Data.DBXMySQL, Vcl.ImgList, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait;


  type  TRespuestas= Record
     cufe:String;
     Xml:String;
     documento:String;
     error:String;
  end;

type
  TFrmNotaCredito = class(TFrame)
    dxTileControl1: TdxTileControl;
    RGEscoge: TcxRadioGroup;
    TxtDocumento: TcxTextEdit;
    TxtUsuario: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    TxtClave: TcxTextEdit;
    TxtUrlVal: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    TxtUrlXML: TcxTextEdit;
    cxLabel1: TcxLabel;
    QryMaestroFacturas: TpFIBDataSet;
    QryDatosEmpresa: TSimpleDataSet;
    QryActualizaEstado: TSQLQuery;
    QryNotasEnviadas: TSimpleDataSet;
    DataSource1: TDataSource;
    QryDetallesNotas: TpFIBDataSet;
    QryNotasEnviadasiddetaTransaccion: TStringField;
    QryNumerosLetras: TSQLQuery;
    QryNumerosLetrasvalor: TStringField;
    CdsNotasSinenviar: TClientDataSet;
    CdsNotasSinenviardocumento: TStringField;
    CdsNotasSinenviarmarcado: TWordField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    BtnCargarFacturas: TcxButton;
    BtnTransmitir: TcxButton;
    cxButton1: TcxButton;
    ImgMarcas: TcxImageList;
    cxLabel6: TcxLabel;
    TxtUrlPDF: TcxTextEdit;
    QryDocumentos: TpFIBDataSet;
    QryDocumentosTIPO: TFIBStringField;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    TxtFacturaCorrespondiente: TcxTextEdit;
    LblEscogePre: TcxLabel;
    LblDigitarFact: TcxLabel;
    CdsNotasSinenviarfactura: TStringField;
    cxGrid1DBTableView1documento: TcxGridDBColumn;
    cxGrid1DBTableView1factura: TcxGridDBColumn;
    cxGrid1DBTableView1marcado: TcxGridDBColumn;
    DBConnLocal: TFDConnection;
    FDTransaction1: TFDTransaction;
    QryDetaTransaccion: TFDQuery;
    QryDetaTransaccioncufe: TStringField;
    QryMaestroFacturasFOLIO: TFIBStringField;
    QryMaestroFacturasTIPORECEPTOR: TFIBIntegerField;
    QryMaestroFacturasTIPODOCREC: TFIBIntegerField;
    QryMaestroFacturasNITRECEPTOR: TFIBStringField;
    QryMaestroFacturasDIGITOVERIFICACION: TFIBStringField;
    QryMaestroFacturasOBLIGACIONESFISCALESRECEPTOR: TFIBStringField;
    QryMaestroFacturasTRIBUTORECEPTOR: TFIBStringField;
    QryMaestroFacturasREGIMENRECEPTOR: TFIBStringField;
    QryMaestroFacturasNOMBRERECEPTOR: TFIBStringField;
    QryMaestroFacturasPRINOMBRERECEPTORPERSONA: TFIBStringField;
    QryMaestroFacturasSEGNOMBRERECEPTORPERSONA: TFIBStringField;
    QryMaestroFacturasPRIAPELLIDORECEPTORPERSONA: TFIBStringField;
    QryMaestroFacturasSEGAPELLIDORECEPTORPERSONA: TFIBStringField;
    QryMaestroFacturasPAISRECEPTOR: TFIBStringField;
    QryMaestroFacturasCODIGODEPARTAMENTO: TFIBStringField;
    QryMaestroFacturasDEPARTAMENTORECEPTOR: TFIBStringField;
    QryMaestroFacturasCODIGOCIUDADRECEPTOR: TFIBStringField;
    QryMaestroFacturasCIUDADRECEPTOR: TFIBStringField;
    QryMaestroFacturasCODIGOPOSTAL: TFIBStringField;
    QryMaestroFacturasDIRECCIONRECEPTOR: TFIBStringField;
    QryMaestroFacturasTELEFONORECEPTOR: TFIBStringField;
    QryMaestroFacturasMAILRECEPTOR: TFIBStringField;
    QryMaestroFacturasFECHA: TFIBStringField;
    QryMaestroFacturasSUBTOTAL: TFIBFloatField;
    QryMaestroFacturasMETODOPAGO: TFIBStringField;
    QryMaestroFacturasMEDIOPAGO: TFIBStringField;
    QryMaestroFacturasFECHAVENCIMIENTO: TFIBStringField;
    QryMaestroFacturasBASEIMPUESTO: TFIBFloatField;
    QryMaestroFacturasTOTALSINDESCUENTO: TFIBFloatField;
    QryMaestroFacturasTOTALIMPUESTOS: TFIBFloatField;
    QryMaestroFacturasTOTALIMPUESTOSRETENIDOS: TFIBFloatField;
    QryMaestroFacturasTOTAL: TFIBFloatField;
    QryDetallesNotasIDCONCEPTO: TFIBIntegerField;
    QryDetallesNotasCANTIDAD: TFIBFloatField;
    QryDetallesNotasUNIDADMEDIDA: TFIBStringField;
    QryDetallesNotasIMPUESTOLINEA: TFIBFloatField;
    QryDetallesNotasTASA: TFIBFloatField;
    QryDetallesNotasTIPO: TFIBStringField;
    QryDetallesNotasBASEIMPUESTOS: TFIBStringField;
    QryDetallesNotasIDENTIFICACIONPRODUCTOS: TFIBIntegerField;
    QryDetallesNotasDESCRIPCION: TFIBStringField;
    QryDetallesNotasPRECIOUNITARIO: TFIBFloatField;
    QryDetallesNotasIMPORTEDETALLE: TFIBFloatField;
    QryDetallesNotasIMPORTEIMPUESTO: TFIBFloatField;
    QryCoordenadas: TFDQuery;
    QryCoordenadascy: TStringField;
    QryCoordenadascx: TStringField;
    QryCoordenadasqy: TStringField;
    QryCoordenadasqx: TStringField;
    QryDatosEmpresanit: TIntegerField;
    QryDatosEmpresanombreempresa: TStringField;
    QryDatosEmpresadireccion: TStringField;
    QryDatosEmpresatelefonos: TStringField;
    QryDatosEmpresaciudad: TStringField;
    QryDatosEmpresacorreo: TStringField;
    QryDatosEmpresausuario: TStringField;
    QryDatosEmpresapassword: TStringField;
    QryDatosEmpresaresolucion: TStringField;
    QryDatosEmpresaprefijo: TStringField;
    QryDatosEmpresarangoDesde: TStringField;
    QryDatosEmpresarangoHasta: TStringField;
    QryDatosEmpresavigDesde: TStringField;
    QryDatosEmpresavigHasta: TStringField;
    QryDatosEmpresaurltoken: TStringField;
    QryDatosEmpresaurlfactura: TStringField;
    QryDatosEmpresaurlpdf: TStringField;
    QryDatosEmpresacodigohelisa: TIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure BtnCargarFacturasClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1MarcadoCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure BtnTransmitirClick(Sender: TObject);
    procedure RGEscogeClick(Sender: TObject);
  private
    { Private declarations }
    vRegactualiza:TRespuestas;
    vCadena :WideString;
    vValorLetras:String;
    procedure GenerarXML(pDocumento:String);
    Procedure ActualizaEstado(pDocumento,pXML,pCufe,pError:String);
    Function EncodeFile(const FileName: string): AnsiString;
    Function ObtenerToken(pUsuario,pPassword,pUrl:String):AnsiString;
    Function EnvioXMLObtenerCufe(pUsuario,pPassword,pUrl,pToken:String;pvXmlEncode:WideString):AnsiString;
    Function EnvioPDF(pUsuario,pPassword,pUrl,pCufe,pToken:String;pPDFEncode:WideString):AnsiString;
  public
    { Public declarations }
    PDFLibrary: TDebenuPDFLibrary1711;
    UnlockResult: Integer;
    Licencia: WideString;
    Factura: WideString;
    NFactura: WideString;
    QR: WideString;
    CUFE: WideString; 
    vEscogeDatos: String;
    TextoCombo: String;
    vNumFacCompleta: String;
    vFactCorrespondiente:String
  end;

var
  FrmNotaCredito: TFrmNotaCredito;

implementation

{$R *.dfm}


//CARGAR LAS FACTURAS QUE NO HAN SIDO TRANSMITIDAS//
procedure TFrmNotaCredito.BtnCargarFacturasClick(Sender: TObject);
  var
    vCaracter, vCondicion:String;
begin
  vCadena := '';
  vCaracter := '';
  vCondicion:='';
  vFactCorrespondiente := TxtFacturaCorrespondiente.Text;
  CdsNotasSinenviar.Close;
  CdsNotasSinenviar.Open;

  QryNotasEnviadas.Close;
  QryNotasEnviadas.Open;

  TextoCombo := DBLookupComboBox1.Text;
  while not QryNotasEnviadas.Eof do
  begin
     vCadena:= vCadena+vCaracter+ ''''+QryNotasEnviadasiddetaTransaccion.AsString+'''';
     vCaracter := ',';
     QryNotasEnviadas.Next;
  end;
  vCondicion := ' and documento not in('+vCadena+') order by DOCUMENTO';
  with DMconn do
  begin
     QryParticularNC.Close;
     QryParticularNC.SQLs.SelectSQL.Clear;
     QryParticularNC.SQLs.SelectSQL.Add('select distinct DOCUMENTO, fa.DOCUMENTO_ORIGEN from FAMAXXXX f inner join FATRXXXX fa on (fa.DOCUMENTO = f.DOCUMENTO) where CLASE_FAC = 2 and documento like'''+TextoCombo+'%''and documento_origen like '''+vFactCorrespondiente+'%''');
     QryParticularNC.SQLs.SelectSQL.Add(vCondicion);
     QryParticularNC.Open;
  end;
  while not DMconn.QryParticularNC.Eof do
  begin
    CdsNotasSinenviar.Append;
    CdsNotasSinenviardocumento.AsString := DMconn.QryParticularNC.Fields[0].AsString;
    CdsNotasSinenviarfactura.AsString   := DMconn.QryParticularNC.Fields[1].AsString;
    CdsNotasSinenviarmarcado.AsInteger  := 0;
    DMconn.QryParticularNC.Next;
  end;
end;
//CARGAR LAS FACTURAS QUE NO HAN SIDO TRANSMITIDAS//

//TRANSMITE LAS FACTURAS SELECCIONADAS//
procedure TFrmNotaCredito.BtnTransmitirClick(Sender: TObject);
begin
  TextoCombo:=DBLookupComboBox1.Text;
  CdsNotasSinenviar.DisableControls;
  CdsNotasSinenviar.Filtered := False;
  CdsNotasSinenviar.Filter := 'Marcado = 1';
  CdsNotasSinenviar.Filtered := True;
  while not CdsNotasSinenviar.Eof do
  begin
    TxtDocumento.Text := CdsNotasSinenviardocumento.AsString;
    cxButton1.OnClick(cxButton1);
    CdsNotasSinenviar.Next;
    sleep(10000);
  end;
  CdsNotasSinenviar.EmptyDataSet;
  BtnCargarFacturasClick(BtnCargarFacturas);
  CdsNotasSinenviar.Close;
  CdsNotasSinenviar.Filtered := False;
  CdsNotasSinenviar.EnableControls;
  CdsNotasSinenviar.Open;
end;
//TRANSMITE LAS FACTURAS SELECCIONADAS//

//CODIFICACION PDF//
function TFrmNotaCredito.EncodeFile(const FileName: string): AnsiString;
  var
    stream: TMemoryStream;
  begin
    stream := TMemoryStream.Create;
    try
      stream.LoadFromFile(Filename);
      result := EncodeBase64(stream.Memory, (stream.Size));
    finally
      stream.Free;
    end;
end;
//CODIFICACION PDF//

//ENVIO DEL PDF CODIFICADO//
Function TFrmNotaCredito.EnvioPDF(pUsuario,pPassword,pUrl,pCufe,pToken:String;pPDFEncode:WideString):AnsiString;
    var
      vCadenaConexion,htmlDna,vResultado:String;
      vMemory:TMemoryStream;
      vIdHTTF1:TIdHTTP;
      vSSL2: TIdSSLIOHandlerSocketOpenSSL;
  begin
    vSSL2:= TIdSSLIOHandlerSocketOpenSSL.Create;
    vIdHTTF1:= TIdHTTP.Create;
    vIdHTTF1.IOHandler := vSSL2;
    vMemory := TMemoryStream.Create;
    QryCoordenadas.Close;
    QryCoordenadas.Open();
    vCadenaConexion :='{'+chr(13)+chr(9)+ '"username":"'+pUsuario+'",'+chr(13)+'"password":"'+pPassword+'",'+chr(13)+ '"cufe":"'+pCufe+'",'+chr(13)+'"pdf64":"'+pPDFEncode+'",'+chr(13)+'"cy":"'+QryCoordenadascy.AsString+'",'+chr(13)+'"cx":"'+QryCoordenadascx.AsString+'",'+chr(13)+'"qx":"'+QryCoordenadasqx.AsString+'",'+chr(13)+'"qy":"'+QryCoordenadasqy.AsString+'"'+chr(13)+'}';
    WriteStringToStream(vMemory, vCadenaConexion);
    vMemory.Position := 0;
    vIdHTTF1.Request.ContentType:= 'application/json';
    vIdHTTF1.Request.Charset:='utf-8';
    vIdHTTF1.Request.CustomHeaders.Values['Authorization']:=pToken;
    try
      htmlDna := vIdHTTF1.Post(pUrl, vMemory);
      vResultado := 'EXITO';
    except on E: Exception do
      vResultado := 'Error transmitiendo PDF '+EIdHTTPProtocolException(e).ErrorMessage;
    end;
    Result := vResultado;
    FreeAndNil(vMemory);
    FreeAndNil(vSSL2);
    FreeAndNil(vIdHTTF1);
end;
//ENVIO DEL PDF CODIFICADO//

//PROCEDIMIENTO INICIAL//
procedure TFrmNotaCredito.cxButton1Click(Sender: TObject);
begin
  GenerarXML(TxtDocumento.Text);
end;
//PROCEDIMIENTO INICIAL//

//PROCEDIMIENTO DE SELECCION EN LAS GRILLAS//
procedure TFrmNotaCredito.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    CdsNotasSinenviar.Edit;
    if CdsNotasSinenviarmarcado.AsInteger = 0 then
    begin
      CdsNotasSinenviarmarcado.AsInteger := 1;
    end
    else begin
      CdsNotasSinenviarmarcado.AsInteger := 0;
    end;
end;

procedure TFrmNotaCredito.cxGrid1DBTableView1marcadoCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var
   vDibujo :TBitmap;
begin
  inherited;
     vDibujo := TBitmap.Create;
  if AViewInfo.Value = 0 then
  begin
    ImgMarcas.GetBitmap(0,vdibujo);
    ACanvas.FillRect(AViewInfo.Bounds);
    ACanvas.DrawGlyph(AViewInfo.Bounds.Left+((AViewInfo.Bounds.Right - AViewInfo.Bounds.Left) div 2)-8, AViewInfo.Bounds.Top + 1, vDibujo);
    ADone:= True;
    ACanvas.Font.Color := clScrollBar;
  end
  else begin
    ImgMarcas.GetBitmap(1,vdibujo);
    ACanvas.FillRect(AViewInfo.Bounds);
    ACanvas.DrawGlyph(AViewInfo.Bounds.Left+((AViewInfo.Bounds.Right - AViewInfo.Bounds.Left) div 2)-8, AViewInfo.Bounds.Top + 1, vDibujo);
    ADone:= True;
    ACanvas.Font.Color := clScrollBar;
    BtnTransmitir.Enabled := True;
  end;
  vDibujo.Free;
end;
//PROCEDIMIENTO DE SELECCION EN LAS GRILLAS//

//OBTENER CUFE//
function TFrmNotaCredito.EnvioXMLObtenerCufe(pUsuario, pPassword, pUrl, pToken: String;
  pvXmlEncode: WideString): AnsiString;
    var
      vCadenaConexion,htmlDna,vTrim:String;
      vMemory:TMemoryStream;
      vLstResultado:TStringList;
      vCufe:String;
      vIdHTTF1:TIdHTTP;
      vSSL2: TIdSSLIOHandlerSocketOpenSSL;
      I:Integer;
      vSinError:Boolean;
  begin
    vSinError := False;
    vSSL2:= TIdSSLIOHandlerSocketOpenSSL.Create;
    vIdHTTF1:= TIdHTTP.Create;
    vIdHTTF1.IOHandler := vSSL2;
    vMemory := TMemoryStream.Create;
    vLstResultado:=TStringList.Create;
    vLstResultado.Delimiter:=',';
    vCadenaConexion :='{'+chr(13)+chr(9)+ '"username": "'+pUsuario+'",'+chr(13)+'"password": "'+pPassword+'",'+chr(13) +'"sucursal":"",'+chr(13)+'"base64doc":"'+pvXmlEncode+'"}';
    WriteStringToStream(vMemory, vCadenaConexion);
    vMemory.Position := 0;
    vIdHTTF1.Request.ContentType:= 'application/json';
    vIdHTTF1.Request.Charset:='utf-8';
    vIdHTTF1.Request.CustomHeaders.Values['Authorization']:=pToken;
    try
      htmlDna := vIdHTTF1.Post(pUrl, vMemory);
      vLstResultado.text:=TrimLeft(htmlDna);
      for i := 0 to vLstResultado.Count -1 do
      begin
         if ((Trim(vLstResultado[i]) = '"StatusCode" : "00"') or (Trim(vLstResultado[i]) = '"StatusCode" : "00",')) then
         begin
           vSinError := True;
         end;
         if ((Trim(vLstResultado[i]) = '"StatusCode" : "99"') or (Trim(vLstResultado[i]) = '"StatusCode" : "99",') or (Trim(vLstResultado[i]) = '"StatusCode" : "2"') or (Trim(vLstResultado[i]) = '"StatusCode" : "2",')) then
         begin
           vLstResultado.savetofile(ExtractFilePath(Application.ExeName)+'Facturas Electrónicas\XML\ERROR.xml');
           vSinError := False;
         end;
         if Trim(vLstResultado[i]) = 'ERROR' then
         begin
           vLstResultado.savetofile(ExtractFilePath(Application.ExeName)+'Facturas Electrónicas\XML\ERROR.xml');
           vSinError := False;
         end;
      end;
      if vSinError then
      begin
        for I := 0 to vLstResultado.Count -1 do
        begin
          vTrim := Trim(vLstResultado[i]);
          if Copy(vTrim,1,6)= '"cufe"' then
          begin
            vCufe :=Copy(vLstResultado[i],13,length(vLstResultado[i])-3);
            vCufe := StringReplace(vCufe,'"','',[rfReplaceAll]);
          end;
        end;
      end;
      if vSinError = False then
      begin
          ShowMessage('Error en transmisión de datos');
          ExitProcess(Handle);
      end;
    except on E: Exception do
              begin
                vCufe := 'ERROR Obteniendo Cufe'+ EIdHTTPProtocolException(e).ErrorMessage;
              end;
    end;
    Result:= vCufe;
    FreeAndNil(vMemory);
    FreeAndNil(vSSL2);
    FreeAndNil(vIdHTTF1);
    FreeAndNil(vLstResultado);
end;
//OBTENER CUFE//

//OBTENER TOKEN//
Function TFrmNotaCredito.ObtenerToken(pUsuario,pPassword,pUrl:String):AnsiString;
    var
      vIdHTTF1:TIdHTTP;
      vSSL2: TIdSSLIOHandlerSocketOpenSSL;
      vCadenaConexion,htmlDna,vCadenaToken:String;
      vMemory:TMemoryStream;
      vLstResultado:TStringList;
      vToken:String;
    begin
      vMemory := TMemoryStream.Create;
      vSSL2:= TIdSSLIOHandlerSocketOpenSSL.Create;
      vIdHTTF1:= TIdHTTP.Create;
      vIdHTTF1.HTTPOptions := [hoForceEncodeParams];
      vIdHTTF1.IOHandler := vSSL2;
      vLstResultado:=TStringList.Create;
      vCadenaConexion := '{"username": "'+pUsuario+'", "password": "'+pPassword+'"}';
      WriteStringToStream(vMemory,vCadenaConexion);
      vMemory.Position := 0;
      with vIdHTTF1 do
      begin
        Request.CustomHeaders.FoldLines := True;
        Request.ContentType:= 'application/json';
        Request.CharSet    := 'utf-8';
        try
          htmlDna:= Post(pUrl,vMemory);
          vLstResultado.Add(htmlDna);
          vCadenaToken :=  StringReplace(vLstResultado.Text,'{'#$A'  "token" : ','',[RfReplaceall]);
          vCadenaToken :=  StringReplace(vCadenaToken,'"'#$A'}'#$D#$A,'',[RfReplaceall]);
          vToken  := Copy(vCadenaToken,2,(length(vCadenaToken)-1));
        except on E: Exception do
               begin
                 vToken := 'Error Obteniendo Token'+ e.Message;
               end;
        end;
      end;
      Result:= vToken;
      FreeAndNil(vMemory);
      FreeAndNil(vSSL2);
      FreeAndNil(vIdHTTF1);
      FreeAndNil(vLstResultado);
    end;
//OBTENER TOKEN//

//ACTIVAR BOTON DE CARGAR FACTURAS//
procedure TFrmNotaCredito.RGEscogeClick(Sender: TObject);
begin
BtnCargarFacturas.Enabled := True;
end;
//ACTIVAR BOTON DE CARGAR FACTURAS//

//GENERAR XML//
procedure TFrmNotaCredito.GenerarXML(pDocumento: String);
   type tNombre = Record
      vNombre1  :String;
      vNombre2  :String;
      vApellido1:String;
      vApellido2:String;
      vRazonSocial:String;
    end;
   var
    CodigoXML: TStringList;
    vCaracterTab:Char;
    vResultadoToken,vResultadoCufe,vResultadoPdf:String;
    vDiasNegociados, vFechaInicio, vFechaVencimiento, vTerminosPago:Integer;
    vFormatoFecha:String;
    vCodificadoXML:WideString;
    vCodificadoPDF:WideString;
    stream: TMemoryStream;
    vNombreFile:String;
    vCondicionfact:String;
    vNumFactura:String;
    vaniofinal, vmesfinal, vdiafinal, vanioinicial, vmesinicial, vdiainicial : word;
begin
  case RGEscoge.ItemIndex of
    0:vEscogeDatos:='1';
    1:vEscogeDatos:='2';
    2:vEscogeDatos:='3';
    3:vEscogeDatos:='4';
    4:vEscogeDatos:='5';
    5:vEscogeDatos:='6';
  end;

  QryDocumentos.Close;
  QryDocumentos.Open;
  TextoCombo:=DBLookupComboBox1.Text;

  DMconn.DbParticular.Close;
  DMconn.DbParticular.Open;
  vRegactualiza.documento := pDocumento;
  QryMaestroFacturas.Close;
  QryMaestroFacturas.ParamByName('pDocumento').AsString := pDocumento;
  QryMaestroFacturas.Open;
  vNumFacCompleta := TextoCombo+pDocumento;

  QryNumerosLetras.Close;
  QryNumerosLetras.ParamByName('pvalor').AsFloat := QryMaestroFacturasTOTAL.AsFloat;
  QryNumerosLetras.ParamByName('pMoneda').AsString := 'Pesos';
  QryNumerosLetras.Open;

  QryDetallesNotas.Close;
  QryDetallesNotas.ParamByName('pDocumento').AsString := pDocumento;
  QryDetallesNotas.Open;

  vFactCorrespondiente := TxtFacturaCorrespondiente.Text;
  QryDetaTransaccion.Close;
  QryDetaTransaccion.Params.ClearValues();
  QryDetaTransaccion.Params[0].AsString:=''+vFactCorrespondiente+'';
  QryDetaTransaccion.Open();
  vNumFactura := QryDetaTransaccioncufe.AsString;

  vValorLetras := QryNumerosLetrasvalor.AsString;

  vanioinicial := StrToInt(copy(QryMaestroFacturasFECHA.AsString,1,4));
  vmesinicial  := StrToInt(copy(QryMaestroFacturasFECHA.AsString,6,2));
  vdiainicial  := StrToInt(copy(QryMaestroFacturasFECHA.AsString,9,2));
  vFechaInicio := DMconn.CodificarFecha(vanioinicial,vmesinicial,vdiainicial);

  vaniofinal := StrToInt(copy(QryMaestroFacturasFECHAVENCIMIENTO.AsString,1,4));
  vmesfinal  := StrToInt(copy(QryMaestroFacturasFECHAVENCIMIENTO.AsString,6,2));
  vdiafinal  := StrToInt(copy(QryMaestroFacturasFECHAVENCIMIENTO.AsString,9,2));
  vFechaVencimiento := DMconn.CodificarFecha(vaniofinal,vmesfinal,vdiafinal);

  vTerminosPago := vFechaVencimiento-vFechaInicio;

  vNombreFile:= Copy(pDocumento,1,4)+IntToStr(QryMaestroFacturasFolio.AsInteger);
  vFormatoFecha   := QryMaestroFacturasFECHAVENCIMIENTO.AsString;
  vCaracterTab   := chr(9);
  CodigoXML := TStringList.Create;
    with CodigoXML do begin
      Add('<?xml version="1.0" standalone="yes"?>');
      Add('<Factura xmlns="http://www.w3.org/2001/XMLSchema-instance">'); // inicio de la lista de libros
      Add('    <Encabezado>');
      Add('        <llavecomprobante>'+QryMaestroFacturasFOLIO.AsString+'</llavecomprobante>');
      Add('        <nitemisor>'+IntToStr(DMconn.QryDatosEmpresanit.AsInteger)+'</nitemisor>');
      Add('        <codSucursal>'+IntToStr(DMconn.QryDatosEmpresanit.AsInteger)+'</codSucursal>');
      Add('        <tiporeceptor>'+IntToStr(QryMaestroFacturasTIPORECEPTOR.AsInteger)+'</tiporeceptor>');
      Add('        <tipoDocRec>'+IntToStr(QryMaestroFacturasTIPODOCREC.AsInteger)+'</tipoDocRec>');
      Add('        <nitreceptor>'+QryMaestroFacturasNITRECEPTOR.AsString+'</nitreceptor>');
      Add('        <digitoverificacion>'+QryMaestroFacturasDIGITOVERIFICACION.AsString+'</digitoverificacion>');
      Add('        <obligacionesfiscalesreceptor>'+QryMaestroFacturasOBLIGACIONESFISCALESRECEPTOR.AsString+'</obligacionesfiscalesreceptor>');
      Add('        <tributoreceptor>01</tributoreceptor>');{Cambiar por 01 mientras F1 arregla el dato}
      Add('        <regimenreceptor>'+QryMaestroFacturasREGIMENRECEPTOR.AsString+'</regimenreceptor>');
      Add('        <nombrereceptor>'+QryMaestroFacturasNOMBRERECEPTOR.AsString+'</nombrereceptor>');
      Add('        <nombrereceptorpersona>'+QryMaestroFacturasPRINOMBRERECEPTORPERSONA.AsString+'</nombrereceptorpersona>');
      Add('        <segnombrereceptor>'+QryMaestroFacturasSEGNOMBRERECEPTORPERSONA.AsString+'</segnombrereceptor>');
      Add('        <apellidosreceptor>'+QryMaestroFacturasPRIAPELLIDORECEPTORPERSONA.AsString+'</apellidosreceptor>');
      Add('        <nombrecomercialreceptor>'+QryMaestroFacturasNOMBRERECEPTOR.AsString+'</nombrecomercialreceptor>');
      Add('        <paisreceptor>CO</paisreceptor>');
      Add('        <codigodepartamento>'+QryMaestroFacturasCODIGODEPARTAMENTO.AsString+'</codigodepartamento>');
      Add('        <departamentoreceptor>'+QryMaestroFacturasDEPARTAMENTORECEPTOR.AsString+'</departamentoreceptor>');
      Add('        <codigociudadreceptor>'+QryMaestroFacturasCODIGOCIUDADRECEPTOR.AsString+'</codigociudadreceptor>');
      Add('        <ciudadreceptor>'+QryMaestroFacturasCIUDADRECEPTOR.AsString+'</ciudadreceptor>');
      Add('        <codigopostal>'+IntToStr(QryMaestroFacturasCODIGOPOSTAL.AsInteger)+'</codigopostal>');
      Add('        <direccionreceptor>'+QryMaestroFacturasDIRECCIONRECEPTOR.AsString+'</direccionreceptor>');
      Add('        <telefonoreceptor>'+QryMaestroFacturasTELEFONORECEPTOR.AsString+'</telefonoreceptor>');
      Add('        <telefonomovilreceptor>'+QryMaestroFacturasTELEFONORECEPTOR.AsString+'</telefonomovilreceptor>');
      Add('        <mailreceptor>'+QryMaestroFacturasMAILRECEPTOR.AsString+'</mailreceptor>');
      Add('        <mailreceptorcontacto>'+QryMaestroFacturasMAILRECEPTOR.AsString+'</mailreceptorcontacto>');
      Add('        <nombrecontactoreceptor></nombrecontactoreceptor>');
      Add('        <tipocomprobante>91</tipocomprobante>');
      Add('        <noresolucion>'+DMconn.QryDatosEmpresaresolucion.AsString+'</noresolucion>');
      if TextoCombo = 'NCFE' then
      begin
        Add('        <prefijo>NC</prefijo>');
      end;
      if TextoCombo <> 'NCFE' then
      begin
        Add('        <prefijo>'+TextoCombo+'</prefijo>');
      end;
      Add('        <folio>'+QryMaestroFacturasFOLIO.AsString+'</folio>');
      Add('        <fecha>'+QryMaestroFacturasFECHA.AsString+'</fecha>');
      Add('        <hora>'+TimeToStr(NOW)+'</hora>');
      Add('        <xslt>1</xslt>');
      Add('        <moneda>COP</moneda>');
      Add('        <subtotal>'+FormatFloat('0.00',(QryMaestroFacturasSUBTOTAL.AsFloat)*-1)+'</subtotal>');
      Add('        <metodopago>1</metodopago>');
      Add('        <mediopago>ZZZ</mediopago>');
      Add('        <fechavencimiento>'+vFormatoFecha+'</fechavencimiento>');
      Add('        <terminospago>'+IntToStr(vTerminosPago)+'</terminospago>');
      Add('        <baseimpuesto>'+FormatFloat('0.00',(QryMaestroFacturasBASEIMPUESTO.AsFloat)*-1)+'</baseimpuesto>');
      Add('        <totalsindescuento>'+FormatFloat('0.00',(QryMaestroFacturasTOTALSINDESCUENTO.AsFloat)*-1)+'</totalsindescuento>');
      Add('        <totaldescuentos>0.00</totaldescuentos>');
      Add('        <totalimpuestos>'+FormatFloat('0.00',(QryMaestroFacturasTOTALIMPUESTOS.AsFloat)*-1)+'</totalimpuestos>');
      Add('        <totalimpuestosretenidos>'+FormatFloat('0.00',(QryMaestroFacturasTOTALIMPUESTOSRETENIDOS.AsFloat)*-1)+'</totalimpuestosretenidos>');
      Add('        <total>'+FormatFloat('0.00',(QryMaestroFacturasTOTAL.AsFloat)*-1)+'</total>');
      Add('        <montoletra>'+vValorLetras+'</montoletra>');
      Add(vCaracterTab+vCaracterTab+'<textolibre></textolibre>');
      Add(vCaracterTab+vCaracterTab+'<ncidfact>'+DBLookupComboBox1.Text+''+IntToStr(QryMaestroFacturasFolio.AsInteger)+'</ncidfact>');
      Add(vCaracterTab+vCaracterTab+'<nccod>'+vEscogeDatos+'</nccod>');
      Add(vCaracterTab+vCaracterTab+'<nciddoc>'+TxtFacturaCorrespondiente.Text+'</nciddoc>');
      Add(vCaracterTab+vCaracterTab+'<ncuuid>'+vNumFactura+'</ncuuid>');
      Add(vCaracterTab+vCaracterTab+'<ncfecha>'+QryMaestroFacturasFECHA.AsString+'</ncfecha>');
      Add(vCaracterTab+vCaracterTab+'<ndidfact></ndidfact>');
      Add(vCaracterTab+vCaracterTab+'<ndcod></ndcod>');
      Add(vCaracterTab+vCaracterTab+'<ndiddoc></ndiddoc>');
      Add(vCaracterTab+vCaracterTab+'<nduuid></nduuid>');
      Add(vCaracterTab+vCaracterTab+'<ndfecha></ndfecha>');
      Add(vCaracterTab+vCaracterTab+'<extra1></extra1>');
      Add(vCaracterTab+vCaracterTab+'<extra2></extra2>');
      Add(vCaracterTab+vCaracterTab+'<extra3></extra3>');
      Add(vCaracterTab+vCaracterTab+'<extra4></extra4>');
      Add(vCaracterTab+vCaracterTab+'<extra5></extra5>');
      Add(vCaracterTab+vCaracterTab+'<extra6></extra6>');
      Add(vCaracterTab+vCaracterTab+'<extra7></extra7>');
      Add(vCaracterTab+vCaracterTab+'<extra8></extra8>');
      Add(vCaracterTab+vCaracterTab+'<extra9></extra9>');
      Add(vCaracterTab+vCaracterTab+'<extra10></extra10>');
      Add(vCaracterTab+vCaracterTab+'<extra11></extra11>');
      Add(vCaracterTab+vCaracterTab+'<extra12></extra12>');
      Add(vCaracterTab+vCaracterTab+'<extra13></extra13>');
      Add(vCaracterTab+vCaracterTab+'<extra14></extra14>');
      Add(vCaracterTab+vCaracterTab+'<extra15></extra15>');
      Add(vCaracterTab+vCaracterTab+'<extra16></extra16>');
      Add(vCaracterTab+vCaracterTab+'<extra17></extra17>');
      Add(vCaracterTab+vCaracterTab+'<extra18></extra18>');
      Add(vCaracterTab+vCaracterTab+'<idContrato></idContrato>');
      Add(vCaracterTab+vCaracterTab+'<tipoContrato></tipoContrato>');
      Add(vCaracterTab+vCaracterTab+'<numMatricula></numMatricula>');
      Add(vCaracterTab+vCaracterTab+'<numMatriculaMan></numMatriculaMan>');
      Add(vCaracterTab+vCaracterTab+'<nombreMandatario></nombreMandatario>');
      Add(vCaracterTab+vCaracterTab+'<nitDV>'+QryMaestroFacturasDIGITOVERIFICACION.AsString+'</nitDV>');
      Add(vCaracterTab+vCaracterTab+'<tiposResponsabilidades></tiposResponsabilidades>');
      Add(vCaracterTab+vCaracterTab+'<numeroConformidad></numeroConformidad>');
      Add(vCaracterTab+vCaracterTab+'<numeroPedido></numeroPedido>');
      Add(vCaracterTab+vCaracterTab+'<ordenCompra></ordenCompra>');
      Add(vCaracterTab+vCaracterTab+'<hojaEntrada></hojaEntrada>');
      Add(vCaracterTab+vCaracterTab+'<centroOperacion></centroOperacion>');
      Add('    </Encabezado>');
      QryDetallesNotas.First;
      while not QryDetallesNotas.Eof do
      begin
      if QryDetallesNotasIDENTIFICACIONPRODUCTOS.AsInteger <> 0 then
        begin
          Add('<Detalle>');
          Add('  <Det>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<llaveComprobante>'+QryMaestroFacturasFolio.AsString+'</llaveComprobante>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<idConcepto>'+IntToStr(QryDetallesNotasIDCONCEPTO.AsInteger)+'</idConcepto>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<cantidad>'+FormatFloat('0.00',(QryDetallesNotasCANTIDAD.AsFloat)*-1)+'</cantidad>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<unidadmedida>94</unidadmedida>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<impuestolinea>'+FormatFloat('0.00',(QryDetallesNotasIMPUESTOLINEA.AsFloat)*-1)+'</impuestolinea>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<tasa>'+FormatFloat('0.00',QryDetallesNotasTASA.AsFloat)+'</tasa>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<tipo>'+QryDetallesNotasTIPO.AsString+'</tipo>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<baseimpuestos>'+FormatFloat('0.00',(QryDetallesNotasBASEIMPUESTOS.AsFloat)*-1)+'</baseimpuestos>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<subpartidaarancelaria></subpartidaarancelaria>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<identificacionproductos>'+IntToStr(QryDetallesNotasIDCONCEPTO.AsInteger)+'</identificacionproductos>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<descripcion>'+QryDetallesNotasDESCRIPCION.AsString+'</descripcion>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<precioUnitario>'+FormatFloat('0.00',QryDetallesNotasPRECIOUNITARIO.AsFloat)+'</precioUnitario>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<importe>'+FormatFloat('0.00',(QryDetallesNotasIMPORTEDETALLE.AsFloat)*-1)+'</importe>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<adicionalInfo></adicionalInfo>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra1></extra1>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra2></extra2>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra3></extra3>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra4></extra4>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra5></extra5>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra6></extra6>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra7></extra7>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra8></extra8>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra9></extra9>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra10></extra10>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra11></extra11>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra12></extra12>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra13></extra13>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra14></extra14>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra15></extra15>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra16></extra16>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra17></extra17>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<extra18></extra18>');
          Add('  </Det>');
          Add('</Detalle>');
          Add('<Impuestos>');
          Add('                            <Imp>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<llaveComprobante>'+QryMaestroFacturasFOLIO.AsString+'</llaveComprobante>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<idImpuesto>1</idImpuesto>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<baseimpuestos>'+FormatFloat('0.00',(QryDetallesNotasBASEIMPUESTOS.AsFloat)*-1)+'</baseimpuestos>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<tasa>'+FormatFloat('0.00',QryDetallesNotasTASA.AsFloat)+'</tasa>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<tipoImpuesto>01</tipoImpuesto>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<importe>'+FormatFloat('0.00',(QryDetallesNotasIMPORTEIMPUESTO.AsFloat)*-1)+'</importe>');
          Add('  </Imp>');
          Add('</Impuestos>');
        end;
        QryDetallesNotas.Next;
      end;
      Add('</Factura>');
    end;
    stream := TMemoryStream.Create;
    CodigoXML.SaveToFile(ExtractFilePath(Application.ExeName)+'Facturas Electrónicas\XML\'+vNombreFile+'.XML'); // guardamos el código
    CodigoXML.SaveToStream(stream);
    stream.Position := 0;
    vCodificadoXML:= EncodeFile(ExtractFilePath(Application.ExeName)+'Facturas Electrónicas\XML\'+vNombreFile+'.XML');
    vCodificadoXML:=StringReplace(vCodificadoXML,#$D#$A,'',[rfReplaceAll]);
    vRegactualiza.Xml := vCodificadoXML;
    CodigoXML.Free;
    TxtUsuario.Text:=DMconn.QryDatosEmpresausuario.AsString;
    TxtClave.Text:=DMconn.QryDatosEmpresapassword.AsString;
    TxtUrlVal.Text:=DMconn.QryDatosEmpresaurltoken.AsString;
    TxtUrlXML.Text:=DMconn.QryDatosEmpresaurlfactura.AsString;
    vResultadoToken:= ObtenerToken(TxtUsuario.Text,TxtClave.Text,TxtUrlVal.Text);
    if  Copy(vResultadoToken,1,5) = 'Error' then
    begin
      showmessage(vResultadoToken);
    end
    else begin
      vResultadoCufe :=EnvioXMLObtenerCufe(TxtUsuario.Text,TxtClave.Text,TxtUrlXML.Text,vResultadoToken,vCodificadoXML);
      vRegactualiza.cufe := vResultadoCufe;
      if COPY(vResultadoCufe,1,5) = 'ERROR' then
      begin
          showmessage(vResultadoCufe);
          vRegactualiza.error := vResultadoCufe;
      end
      else begin
         vCodificadoPDF := EncodeFile(ExtractFilePath(Application.ExeName)+'Facturas Electrónicas\Entrada\'+vNombreFile+'.pdf');
         vCodificadoPDF:=StringReplace(vCodificadoPDF,#$D#$A,'',[rfReplaceAll]);
         vResultadoPdf := EnvioPDF(TxtUsuario.Text,TxtClave.Text,TxtUrlPDF.Text,vResultadoCufe,vResultadoToken,vCodificadoPDF);
         vRegactualiza.error := '0';
         ActualizaEstado(vRegactualiza.documento,vRegactualiza.Xml,vRegactualiza.cufe,vRegactualiza.error);
         ShowMessage('Enviado con éxito');
      end;
   end;
end;
//GENERAR XML//

//ACTUALIZA ESTADO EN LA BASE DE DATOS//
procedure TFrmNotaCredito.ActualizaEstado(pDocumento,pXML,pCufe,pError:String);
begin
  QryActualizaEstado.Close;
  QryActualizaEstado.ParamByName('pDocumento').AsString := pDocumento;
  QryActualizaEstado.ParamByName('pXml').AsString       := pXML;
  QryActualizaEstado.ParamByName('pCufe').AsString      := pCufe;
  QryActualizaEstado.ParamByName('pEstado').AsInteger   := 1;
  QryActualizaEstado.ParamByName('pError').AsString      := pError;
  QryActualizaEstado.ExecSQL();
end;
//ACTUALIZA ESTADO EN LA BASE DE DATOS//

end.
