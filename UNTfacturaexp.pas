unit UNTfacturaexp;

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
  Datasnap.Provider, Vcl.ImgList, Vcl.CheckLst, Vcl.DBCtrls, cxMaskEdit,
  cxDropDownEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, MidasLib, cxGroupBox,
  cxRadioGroup, frxClass, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef;
  type  TRespuestas= Record
     cufe:String;
     Xml:String;
     documento:String;
     error:String;
  end;
type
  TFrmFacturaExp = class(TFrame)
    TxtUrlXML: TcxTextEdit;
    cxLabel5: TcxLabel;
    TxtUrlVal: TcxTextEdit;
    cxLabel4: TcxLabel;
    TxtClave: TcxTextEdit;
    TxtUsuario: TcxTextEdit;
    TxtDocumento: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    QryDatosEmpresa: TSimpleDataSet;
    QryDatosEmpresanit: TIntegerField;
    QryDatosEmpresanombreempresa: TStringField;
    QryDatosEmpresadireccion: TStringField;
    QryDatosEmpresatelefonos: TStringField;
    QryDatosEmpresaciudad: TStringField;
    QryDatosEmpresacorreo: TStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    QryDatosEmpresaurltoken: TStringField;
    QryDatosEmpresaurlfactura: TStringField;
    QryDatosEmpresacodigohelisa: TIntegerField;
    QryDatosEmpresaurlpdf: TStringField;
    QryMaestroFacturas: TpFIBDataSet;
    QryActualizaEstado: TSQLQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QryFacEnviadas: TSimpleDataSet;
    QryFacEnviadasiddetaTransaccion: TStringField;
    BtnCargarFacturas: TcxButton;
    DataSource1: TDataSource;
    CdsFacSinenviar: TClientDataSet;
    ImgMarcas: TcxImageList;
    BtnTransmitir: TcxButton;
    QryNumerosLetras: TSQLQuery;
    QryNumerosLetrasvalor: TStringField;
    QryDetallesFactura: TpFIBDataSet;
    DBLookupComboBox1: TDBLookupComboBox;
    QryDocumentos: TpFIBDataSet;
    DataSource2: TDataSource;
    QryDocumentosTIPO: TFIBStringField;
    CdsFacSinenviarDOCUMENTO: TStringField;
    CdsFacSinenviarNOMBRECLIENTE: TStringField;
    CdsFacSinenviarVALORNETO: TFloatField;
    CdsFacSinenviarVALORIVA: TFloatField;
    CdsFacSinenviarMARCADO: TWordField;
    cxLabel6: TcxLabel;
    TxtUrlPDF: TcxTextEdit;
    dxTileControl1: TdxTileControl;
    cxLabel7: TcxLabel;
    RGTipo: TcxRadioGroup;
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
    QryDetallesFacturaIDCONCEPTO: TFIBIntegerField;
    QryDetallesFacturaCANTIDAD: TFIBFloatField;
    QryDetallesFacturaUNIDADMEDIDA: TFIBStringField;
    QryDetallesFacturaIMPUESTOLINEA: TFIBFloatField;
    QryDetallesFacturaTASA: TFIBFloatField;
    QryDetallesFacturaTIPO: TFIBStringField;
    QryDetallesFacturaBASEIMPUESTOS: TFIBStringField;
    QryDetallesFacturaIDENTIFICACIONPRODUCTOS: TFIBIntegerField;
    QryDetallesFacturaDESCRIPCION: TFIBStringField;
    QryDetallesFacturaPRECIOUNITARIO: TFIBFloatField;
    QryDetallesFacturaIMPORTEDETALLE: TFIBFloatField;
    QryDetallesFacturaIMPORTEIMPUESTO: TFIBFloatField;
    DBConnLocal: TFDConnection;
    FDTransaction1: TFDTransaction;
    QryDatoResolucion: TFDQuery;
    QryDatoResolucionidResolucion: TStringField;
    QryCoordenadas: TFDQuery;
    QryCoordenadascy: TStringField;
    QryCoordenadascx: TStringField;
    QryCoordenadasqy: TStringField;
    QryCoordenadasqx: TStringField;
    cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRECLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1VALORNETO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORIVA: TcxGridDBColumn;
    cxGrid1DBTableView1MARCADO: TcxGridDBColumn;
    DBConnGlobal: TFDConnection;
    FDTransaction2: TFDTransaction;
    QryTasaCambio: TFDQuery;
    QryTasaCambioTASA_CAMBIO: TFloatField;
    QryMaestroFacturasFECHA_TASA: TFIBIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure BtnCargarFacturasClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1MarcadoCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure BtnTransmitirClick(Sender: TObject);
    procedure RGTipoClick(Sender: TObject);
  private
    { Private declarations }
    vRegactualiza:TRespuestas;
    vCadena :WideString;
    vValorLetras:String;
    procedure GenerarXML(pDocumento:String);
    Procedure ActualizaEstado(pDocumento,pXML,pCufe,pError:String);
    Function EncodeFile(const PDF: string): AnsiString;
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
    vEscogeTipo: String;
    vprefijo:String;
  end;

var
  FrmFacturaExp: TFrmFacturaExp;

implementation

{$R *.dfm}

//CARGAR LAS FACTURAS QUE NO HAN SIDO TRANSMITIDAS//
procedure TFrmFacturaExp.BtnCargarFacturasClick(Sender: TObject);
var
  vCaracter, vCondicion:String;
  TextoCombo: String;
begin
  vCadena := '';
  vCaracter := '';
  vCondicion:='';
  CdsFacSinenviar.Close;
  CdsFacSinenviar.Open;
  QryFacEnviadas.Close;
  QryFacEnviadas.Open;
  TextoCombo := DBLookupComboBox1.Text;
  while not QryFacEnviadas.Eof do
  begin
     vCadena:= vCadena+vCaracter+ ''''+QryFacEnviadasiddetaTransaccion.AsString+'''';
     vCaracter := ',';
     QryFacEnviadas.Next;
  end;
  vCondicion := ' and documento not in('+vCadena+') order by DOCUMENTO';
  with DMconn do
  begin
     DMconn.QryParticularFac.Close;
     QryParticularFac.SQLs.SelectSQL.Clear;
     QryParticularFac.SQLs.SelectSQL.Add('select documento,c.nombre as codigo_tercero,(art_total_bruto+ser_total_bruto) as valorneto,(art_total_iva+ser_total_iva) as valoriva from famaxxxx f left join ccma2019 c on(c.codigo=f.codigo_tercero) where CLASE_FAC = 1 and documento like'''+TextoCombo+'%''');
     QryParticularFac.SQLs.SelectSQL.Add(vCondicion);
     DMconn.QryParticularFac.Open;
  end;
  while not DMconn.QryParticularFac.Eof do
  begin
    CdsFacSinenviar.Append;
    CdsFacSinenviarDOCUMENTO.AsString := DMconn.QryParticularFac.FieldByName('documento').AsString;
    CdsFacSinenviarNOMBRECLIENTE.AsString := DMconn.QryParticularFac.FieldByName('codigo_tercero').AsString;
    CdsFacSinenviarVALORNETO.AsFloat := DMconn.QryParticularFac.FieldByName('valorneto').AsFloat;
    CdsFacSinenviarVALORIVA.AsFloat := DMconn.QryParticularFac.FieldByName('valoriva').AsFloat;
    CdsFacSinenviarMARCADO.AsInteger  := 0;
    DMconn.QryParticularFac.Next;
  end;
end;
//CARGAR LAS FACTURAS QUE NO HAN SIDO TRANSMITIDAS//

//TRANSMITE LAS FACTURAS SELECCIONADAS//
procedure TFrmFacturaExp.BtnTransmitirClick(Sender: TObject);
begin
  CdsFacSinenviar.DisableControls;
  CdsFacSinenviar.Filtered := False;
  CdsFacSinenviar.Filter := 'Marcado = 1';
  CdsFacSinenviar.Filtered := True;
  while not CdsFacSinenviar.Eof do
  begin
    TxtDocumento.Text := CdsFacSinenviardocumento.AsString;
    cxButton1.OnClick(cxButton1);
    CdsFacSinenviar.Next;
    sleep(10000);
  end;
  CdsFacSinenviar.EmptyDataSet;
  BtnCargarFacturasClick(BtnCargarFacturas);
  CdsFacSinenviar.Close;
  CdsFacSinenviar.Filtered := False;
  CdsFacSinenviar.EnableControls;
  CdsFacSinenviar.Open;
end;
//TRANSMITE LAS FACTURAS SELECCIONADAS//

//CODIFICACION PDF//
function TFrmFacturaExp.EncodeFile(const PDF: string): AnsiString;
  var
    stream: TMemoryStream;
  begin
    stream := TMemoryStream.Create;
    try
      stream.LoadFromFile(PDF);
      result := EncodeBase64(stream.Memory, (stream.Size));
    finally
      stream.Free;
    end;
end;
//CODIFICACION PDF//

//ENVIO DEL PDF CODIFICADO//
Function TFrmFacturaExp.EnvioPDF(pUsuario,pPassword,pUrl,pCufe,pToken:String;pPDFEncode:WideString):AnsiString;
    var
      vCadenaConexion,htmlDna:String;
      vResultado:String;
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
procedure TFrmFacturaExp.cxButton1Click(Sender: TObject);
begin
  GenerarXML(TxtDocumento.Text);
end;
//PROCEDIMIENTO INICIAL (SELECCIONA EL DOCUMENTO, INSERTAR QR Y CUFE)//

//PROCEDIMIENTO DE SELECCION EN LAS GRILLAS//
procedure TFrmFacturaExp.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    CdsFacSinenviar.Edit;
    if CdsFacSinenviarMARCADO.AsInteger = 0 then
    begin
      CdsFacSinenviarMARCADO.AsInteger := 1;
    end
    else begin
      CdsFacSinenviarMARCADO.AsInteger := 0;
    end;
end;

procedure TFrmFacturaExp.cxGrid1DBTableView1MarcadoCustomDrawCell(
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
function TFrmFacturaExp.EnvioXMLObtenerCufe(pUsuario, pPassword, pUrl, pToken: String;
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
           vSinError := True;
         if ((Trim(vLstResultado[i]) = '"StatusCode" : "99"') or (Trim(vLstResultado[i]) = '"StatusCode" : "99",') or (Trim(vLstResultado[i]) = '"StatusCode" : "2"') or (Trim(vLstResultado[i]) = '"StatusCode" : "2",')) then
           vSinError := False;
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
          ShowMessage('Error en transmisi�n de datos');
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
Function TFrmFacturaExp.ObtenerToken(pUsuario,pPassword,pUrl:String):AnsiString;
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
procedure TFrmFacturaExp.RGTipoClick(Sender: TObject);
begin
BtnCargarFacturas.Enabled := True;
end;
//ACTIVAR BOTON DE CARGAR FACTURAS//

//GENERAR XML//
procedure TFrmFacturaExp.GenerarXML(pDocumento: String);
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
    vResultadoToken:String;
    vResultadoCufe,vResultadoPdf:String;
    vDiasNegociados, vFechaInicio, vFechaVencimiento, vTerminosPago:Integer;
    vFormatoFecha:String;
    vCodificadoXML:WideString;
    vCodificadoPDF:WideString;
    stream: TMemoryStream;
    vNombreFile:String;
    vResolucion:String;
    vTasaCambio:Integer;
    vaniofinal, vmesfinal, vdiafinal, vanioinicial, vmesinicial, vdiainicial : word;
begin
  case RGTipo.ItemIndex of
    0:vEscogeTipo:='01';
    1:vEscogeTipo:='03';
    2:vEscogeTipo:='04';
  end;

  DMconn.DbParticular.Close;
  DMconn.DbParticular.Open;

  DMconn.QryParticularFac.Close;
  DMconn.QryParticularFac.Open;

  vRegactualiza.documento := pDocumento;
  QryMaestroFacturas.Close;
  QryMaestroFacturas.ParamByName('pDocumento').AsString := pDocumento;
  QryMaestroFacturas.Open;

  QryDetallesFactura.Close;
  QryDetallesFactura.ParamByName('pDocumento').AsString := pDocumento;
  QryDetallesFactura.Open;

  QryDocumentos.Close;
  QryDocumentos.Open;

  vprefijo := DBLookupComboBox1.Text;
  QryDatoResolucion.Close;
  QryDatoResolucion.Params.ClearValues();
  QryDatoResolucion.Params[0].AsString:=''+vprefijo+'';
  QryDatoResolucion.Open();
  vResolucion := QryDatoResolucionidResolucion.AsString;

  QryTasaCambio.Close;
  QryTasaCambio.Params.ClearValues();
  QryTasaCambio.Params[0].AsString:=''+QryMaestroFacturasFECHA_TASA.AsString+'';
  QryTasaCambio.Open();
  vTasaCambio := QryTasaCambioTASA_CAMBIO.AsInteger;

  QryNumerosLetras.Close;
  QryNumerosLetras.ParamByName('pvalor').AsFloat := QryMaestroFacturasTOTAL.AsFloat/vTasaCambio;
  QryNumerosLetras.ParamByName('pMoneda').AsString := 'Dolares';
  QryNumerosLetras.Open;

  vValorLetras    := QryNumerosLetrasvalor.AsString;

  vanioinicial := StrToInt(copy(QryMaestroFacturasFECHA.AsString,1,4));
  vmesinicial  := StrToInt(copy(QryMaestroFacturasFECHA.AsString,6,2));
  vdiainicial  := StrToInt(copy(QryMaestroFacturasFECHA.AsString,9,2));
  vFechaInicio := DMconn.CodificarFecha(vanioinicial,vmesinicial,vdiainicial);

  vaniofinal := StrToInt(copy(QryMaestroFacturasFECHAVENCIMIENTO.AsString,1,4));
  vmesfinal  := StrToInt(copy(QryMaestroFacturasFECHAVENCIMIENTO.AsString,6,2));
  vdiafinal  := StrToInt(copy(QryMaestroFacturasFECHAVENCIMIENTO.AsString,9,2));
  vFechaVencimiento := DMconn.CodificarFecha(vaniofinal,vmesfinal,vdiafinal);

  vTerminosPago := vFechaVencimiento-vFechaInicio;

  vNombreFile     := Copy(pDocumento,1,4)+QryMaestroFacturasFolio.AsString;
  vFormatoFecha   := QryMaestroFacturasFECHAVENCIMIENTO.AsString;
  vCaracterTab    := chr(9);
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
      Add('        <tipocomprobante>'+vEscogeTipo+'</tipocomprobante>');
      if vEscogeTipo = '03' then
      begin
        Add('        <noresolucion>'+vResolucion+'</noresolucion>');
      end else
      begin
        Add('        <noresolucion>'+DMconn.QryDatosEmpresaresolucion.AsString+'</noresolucion>');
      end;
      Add('        <prefijo>'+DBLookupComboBox1.Text+'</prefijo>');
      Add('        <folio>'+QryMaestroFacturasFOLIO.AsString+'</folio>');
      Add('        <fecha>'+QryMaestroFacturasFECHA.AsString+'</fecha>');
      Add('        <hora>'+TimeToStr(NOW)+'</hora>');
      Add('        <xslt>1</xslt>');
      Add('        <moneda>COP</moneda>');
      Add('        <subtotal>'+FormatFloat('0.00',(QryMaestroFacturasSUBTOTAL.AsFloat/vTasaCambio))+'</subtotal>');
      Add('        <metodopago>1</metodopago>');
      Add('        <mediopago>ZZZ</mediopago>');
      Add('        <fechavencimiento>'+vFormatoFecha+'</fechavencimiento>');
      Add('        <terminospago>'+IntToStr(vTerminosPago)+'</terminospago>');
      Add('        <baseimpuesto>'+FormatFloat('0.00',(QryMaestroFacturasBASEIMPUESTO.AsFloat/vTasaCambio))+'</baseimpuesto>');
      Add('        <totalsindescuento>'+FormatFloat('0.00',(QryMaestroFacturasTOTALSINDESCUENTO.AsFloat/vTasaCambio))+'</totalsindescuento>');
      Add('        <totaldescuentos>0.00</totaldescuentos>');
      Add('        <totalimpuestos>'+FormatFloat('0.00',(QryMaestroFacturasTOTALIMPUESTOS.AsFloat/vTasaCambio))+'</totalimpuestos>');
      Add('        <totalimpuestosretenidos>'+FormatFloat('0.00',(QryMaestroFacturasTOTALIMPUESTOSRETENIDOS.AsFloat/vTasaCambio))+'</totalimpuestosretenidos>');
      Add('        <total>'+FormatFloat('0.00',(QryMaestroFacturasTOTAL.AsFloat/vTasaCambio))+'</total>');
      Add('        <montoletra>'+vValorLetras+'</montoletra>');
      Add(vCaracterTab+vCaracterTab+'<textolibre></textolibre>');
      Add(vCaracterTab+vCaracterTab+'<ncidfact></ncidfact>');
      Add(vCaracterTab+vCaracterTab+'<nccod></nccod>');
      Add(vCaracterTab+vCaracterTab+'<nciddoc></nciddoc>');
      Add(vCaracterTab+vCaracterTab+'<ncuuid></ncuuid>');
      Add(vCaracterTab+vCaracterTab+'<ncfecha></ncfecha>');
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
      QryDetallesFactura.First;
      while not QryDetallesFactura.Eof do
      begin
      if QryDetallesFacturaIDENTIFICACIONPRODUCTOS.AsInteger <> 0 then
        begin
          Add('<Detalle>');
          Add('  <Det>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<llaveComprobante>'+QryMaestroFacturasFolio.AsString+'</llaveComprobante>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<idConcepto>'+IntToStr(QryDetallesFacturaIDCONCEPTO.AsInteger)+'</idConcepto>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<cantidad>'+FormatFloat('0.00',QryDetallesFacturaCANTIDAD.AsFloat)+'</cantidad>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<unidadmedida>94</unidadmedida>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<impuestolinea>'+FormatFloat('0.00',(QryDetallesFacturaIMPUESTOLINEA.AsFloat/vTasaCambio))+'</impuestolinea>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<tasa>'+FormatFloat('0.00',QryDetallesFacturaTASA.AsFloat)+'</tasa>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<tipo>'+QryDetallesFacturaTIPO.AsString+'</tipo>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<baseimpuestos>'+FormatFloat('0.00',(QryDetallesFacturaBASEIMPUESTOS.AsFloat/vTasaCambio))+'</baseimpuestos>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<subpartidaarancelaria></subpartidaarancelaria>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<identificacionproductos>'+IntToStr(QryDetallesFacturaIDENTIFICACIONPRODUCTOS.AsInteger)+'</identificacionproductos>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<descripcion>'+QryDetallesFacturaDESCRIPCION.AsString+'</descripcion>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<precioUnitario>'+FormatFloat('0.00',(QryDetallesFacturaPRECIOUNITARIO.AsFloat/vTasaCambio))+'</precioUnitario>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<importe>'+FormatFloat('0.00',(QryDetallesFacturaIMPORTEDETALLE.AsFloat/vTasaCambio))+'</importe>');
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
          Add('  <Imp>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<llaveComprobante>'+QryMaestroFacturasFOLIO.AsString+'</llaveComprobante>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<idImpuesto>1</idImpuesto>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<baseimpuestos>'+FormatFloat('0.00',(QryDetallesFacturaBASEIMPUESTOS.AsFloat/vTasaCambio))+'</baseimpuestos>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<tasa>'+FormatFloat('0.00',QryDetallesFacturaTASA.AsFloat)+'</tasa>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<tipoImpuesto>01</tipoImpuesto>');
          Add(vCaracterTab+vCaracterTab+vCaracterTab+'<importe>'+FormatFloat('0.00',(QryDetallesFacturaIMPORTEIMPUESTO.AsFloat/vTasaCambio))+'</importe>');
          Add('  </Imp>');
          Add('</Impuestos>');
        end;
          QryDetallesFactura.Next;
      end;
      Add('</Factura>');
    end;
    stream := TMemoryStream.Create;
    CodigoXML.SaveToFile(ExtractFilePath(Application.ExeName)+'Facturas Electr�nicas\XML\'+vNombreFile+'.XML'); // guardamos el c�digo
    CodigoXML.SaveToStream(stream);
    stream.Position := 0;
    vCodificadoXML:= EncodeFile(ExtractFilePath(Application.ExeName)+'Facturas Electr�nicas\XML\'+vNombreFile+'.XML');
    vCodificadoXML:=StringReplace(vCodificadoXML,#$D#$A,'',[rfReplaceAll]);
    vRegactualiza.Xml := vCodificadoXML;
    CodigoXML.Free;
    TxtUsuario.Text:=DMconn.QryDatosEmpresausuario.AsString;
    TxtClave.Text:=DMconn.QryDatosEmpresapassword.AsString;
    TxtUrlVal.Text:=DMconn.QryDatosEmpresaurltoken.AsString;
    TxtUrlXML.Text:=DMconn.QryDatosEmpresaurlfactura.AsString;
    TxtUrlPDF.Text:=DMconn.QryDatosEmpresaurlpdf.AsString;
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
         vCodificadoPDF := EncodeFile(ExtractFilePath(Application.ExeName)+'Facturas Electr�nicas\Entrada\'+vNombreFile+'.pdf');
         vCodificadoPDF:=StringReplace(vCodificadoPDF,#$D#$A,'',[rfReplaceAll]);
         vResultadoPdf := EnvioPDF(TxtUsuario.Text,TxtClave.Text,TxtUrlPDF.Text,vResultadoCufe,vResultadoToken,vCodificadoPDF);
         vRegactualiza.error := '0';
         ActualizaEstado(vRegactualiza.documento,vRegactualiza.Xml,vRegactualiza.cufe,vRegactualiza.error);
         ShowMessage('Enviado con �xito');
      end;
    end;
end;
//GENERAR XML//

//ACTUALIZA ESTADO EN LA BASE DE DATOS//
procedure TFrmFacturaExp.ActualizaEstado(pDocumento,pXML,pCufe,pError:String);
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
