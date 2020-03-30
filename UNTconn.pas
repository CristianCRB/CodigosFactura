unit UNTconn;

interface

uses
  System.SysUtils, System.Classes,Data.DBXMySQL, Data.SqlExpr,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet,
  Data.FMTBcd, Datasnap.DBClient, SimpleDS, FIBQuery, pFIBQuery,
  Data.DB,UNTmenuprincipal, UNTprincipal,vcl.dialogs,MidasLib, Datasnap.Provider,
  Data.DBXSybaseASE, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Data.DBXDb2,
  Datasnap.DSCommonServer, Datasnap.DSServer, Soap.SOAPConn,
  Datasnap.DSMetadata, Datasnap.DSServerMetadata;

type
  TDMconn = class(TDataModule)
    DtsDatosEmpresaAYT: TDataSource;
    DBGlobal: TpFIBDatabase;
    QryEmpresaGeneral: TpFIBDataSet;
    TrGlobal: TpFIBTransaction;
    DBAYT: TSQLConnection;
    QryDatosEmpresa: TSimpleDataSet;
    QryComparacion: TpFIBQuery;
    DbParticular: TpFIBDatabase;
    TrParticular: TpFIBTransaction;
    QryParticularFac: TpFIBDataSet;
    QryParticularNC: TpFIBDataSet;
    SQLConnection1: TSQLConnection;
    QryDetaTransaccion: TSQLQuery;
    DtsDetaTransaccion: TDataSetProvider;
    CdtsDetaTransaccion: TClientDataSet;
    QryActualizacionDatosEmpresa: TSQLQuery;
    QryDBName: TSQLQuery;
    DtsDBName: TDataSetProvider;
    CdtsDBName: TClientDataSet;
    QryActualizaCoor: TSQLQuery;
    QryCoordenadas: TSQLQuery;
    DtsCoordenadas: TDataSetProvider;
    CdtsCoordenadas: TClientDataSet;
    DbServidor: TSQLConnection;
    QryServidor: TSimpleDataSet;
    QryServidornit: TIntegerField;
    QryServidorlicencia: TStringField;
    QryServidorestado: TIntegerField;
    QryServidorrango: TIntegerField;
    QryDBNameDBNameGlobal: TStringField;
    QryDBNamePasswordGlobal: TStringField;
    QryDBNameDBNameParticular: TStringField;
    QryDBNamePasswordPart: TStringField;
    QryDBNameHostName: TStringField;
    QryDBNameBaseDatos: TStringField;
    QryServidor2: TSimpleDataSet;
    QryServidor2nit: TIntegerField;
    QryServidor2licencia: TStringField;
    QryServidor2estado: TIntegerField;
    QryServidor2rango: TIntegerField;
    QryDatosEmpresanit: TIntegerField;
    QryDatosEmpresalicencia: TStringField;
    QryDatosEmpresarango: TIntegerField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Aplicar;
    procedure AplicarDB;
    procedure Nuevo;
    procedure Modificar;
    procedure ModificarDB;
    procedure Eliminar;
  private
    { Private declarations }

    FForm2: TForMenuPrincipal;
    procedure ActulizaDatosEmpresa(pCodigoH:integer);
  public
    { Public declarations }
    contador: String;
    contadorNumero: Integer;
    identificacion: String;
    identificacionNum,vCodigoHelisa: Integer;
    identificacionRegistrada: String;
    identificacionRegistradaNum: Integer;
    Function CodificarFecha(CAno, CMes, CDia: Word): Integer;
    Function DiasDelMes(XAno, XMes: integer): integer;
    Function EsAnoBisiesto(CAno: Word): Boolean;
  end;
  Const
    Antes1900 = 693594;
var
  DMconn: TDMconn;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UNTbasededatos, UNTerrorlicencia, UNTerrornumlicencia;


{$R *.dfm}

procedure TDMconn.ActulizaDatosEmpresa(pCodigoH: integer);
begin
  QryDatosEmpresa.Edit;
  QryDatosEmpresacodigohelisa.AsInteger := QryEmpresaGeneral.FieldByName('codigo').AsInteger;
  QryDatosEmpresanit.AsInteger          := QryEmpresaGeneral.FieldByName('identidad').AsInteger;
  QryDatosEmpresanombreempresa.AsString := QryEmpresaGeneral.FieldByName('nombre').AsString;
  QryDatosEmpresadireccion.AsString     := QryEmpresaGeneral.FieldByName('direccion').AsString;
  QryDatosEmpresatelefonos.AsString     := QryEmpresaGeneral.FieldByName('telefonos').AsString;
  QryDatosEmpresaciudad.AsString        := QryEmpresaGeneral.FieldByName('codigo_ciudad').AsString;
  QryDatosEmpresacorreo.AsString        := QryEmpresaGeneral.FieldByName('email').AsString;
  QryDatosEmpresa.ApplyUpdates(1);
end;

function TDMconn.CodificarFecha(CAno, CMes, CDia: Word): Integer;
Var
  I: Word;
begin
  Result := 0;
  if (CAno >= 1) and (CAno <= 9999) and (CMes >= 1) and (CMes <= 12) and
    (CDia >= 1) and (CDia <= DiasDelMes(CAno,CMes)) then
  begin
    for I := 1 to CMes - 1 do
      Inc(CDia, DiasDelMes(CAno,I));
    I := CAno - 1;
    Result:= I * 365 + I div 4 - I div 100 + I div 400 + CDia - Antes1900;
  end;

end;

procedure TDMconn.DataModuleCreate(Sender: TObject);
var
  Fform1: TForEmpresas;
  FformErrorLic : TFrmErrorLicencia;
  FformErrorNumLic : TFrmErrorNumLic;
begin
  QryDatosEmpresa.Close;
  QryDatosEmpresa.Open;
  //QryServidor.Close;
  //QryServidor.Open;
  QryServidor2.Close;
  QryServidor2.Open;
  if QryServidor2nit.AsInteger = QryDatosEmpresanit.AsInteger then
  begin
    if QryServidor2licencia.AsString = QryDatosEmpresalicencia.AsString then
    begin
      if QryServidor2estado.AsInteger = 0 then
      begin
        FformErrorLic := TFrmErrorLicencia.Create(Self);
        FformErrorLic.ShowModal;
      end;

      if QryServidor2estado.AsInteger = 1 then
      begin
        DBGlobal.Connected := False;
        DBGlobal.DBName := QryDBNameDBNameGlobal.AsString;
        DBGlobal.ConnectParams.Password := QryDBNamePasswordGlobal.AsString;
        DbParticular.DBName := QryDBNameDBNameParticular.AsString;
        DbParticular.ConnectParams.Password := QryDBNamePasswordPart.AsString;

        DBAYT.Params.Values['HostName'] := QryDBNameHostName.AsString;

        if not DBGlobal.Connected then
          DBGlobal.Connected := True
        else
          DBGlobal.Connected := False;
          DBGlobal.Connected := True;
        if not DbParticular.Connected then
          DbParticular.Connected := True
        else
          DbParticular.Connected := False;
        DbParticular.Connected := True;
        if not TrParticular.Active then
          TrParticular.StartTransaction;
        QryEmpresaGeneral.Open;
        DBAYT.Connected := True;
        QryDatosEmpresa.Close;
        QryDatosEmpresa.Open;
        if QryDatosEmpresa.RecordCount > 1 then
        begin
          Fform1 := TForEmpresas.Create(nil);
          Fform1.Show;
        end
        else begin
          QryEmpresaGeneral.Locate('codigo',QryDatosEmpresacodigohelisa.AsInteger,[]);
          ActulizaDatosEmpresa(QryEmpresaGeneral.FieldByName('codigo').AsInteger);
          FForm2 := TForMenuPrincipal.Create(nil);;
          FForm2.Show;
        end;
        vCodigoHelisa := QryDatosEmpresacodigohelisa.asinteger;
        QryComparacion.Close;
        QryComparacion.SQL.Clear;
        QryComparacion.SQL.Add('select * from DIRECTOR where codigo='+IntToStr(vCodigoHelisa));
        QryComparacion.ExecQuery;
      end;
    end;
    if QryServidor2licencia.AsString <> QryDatosEmpresalicencia.AsString then
    begin
      FformErrorNumLic := TFrmErrorNumLic.Create(Self);
      FformErrorNumLic.ShowModal;
    end;
  end;
  if QryServidor2nit.AsInteger <> QryDatosEmpresanit.AsInteger then
  begin
    FformErrorNumLic := TFrmErrorNumLic.Create(Self);
    FformErrorNumLic.ShowModal;
  end;
end;


procedure TDMconn.DataModuleDestroy(Sender: TObject);
begin
  QryEmpresaGeneral.Close;
  QryDatosEmpresa.Close;
  DBGlobal.Close;
end;

function TDMconn.DiasDelMes(XAno, XMes: integer): integer;
    const
      DiasPorMes: array[1..14] of integer = (31,28,31,30,31,30,31,31,30,31,30,31,31,31);
  begin
    Result:= DiasPorMes[XMes];
    if (XMes=2) and EsAnoBisiesto(XAno) then Inc(Result);
end;

function TDMconn.EsAnoBisiesto(CAno: Word): Boolean;
begin
    Result := (CAno mod 4 = 0) and ((CAno mod 100 <> 0) or (CAno mod 400 = 0));
end;

procedure TDMconn.Aplicar;
begin
  CdtsDetaTransaccion.Post;
  CdtsDetaTransaccion.ApplyUpdates(0);
  CdtsDetaTransaccion.Close;
  CdtsDetaTransaccion.Open;
end;

procedure TDMconn.AplicarDB;
begin
  CdtsDBName.Post;
  CdtsDBName.ApplyUpdates(0);
  CdtsDBName.Close;
  CdtsDBName.Open;
end;

procedure TDMconn.Modificar;
begin
  CdtsDetaTransaccion.Edit;
end;

procedure TDMconn.ModificarDB;
begin
  CdtsDBName.Edit;
end;

procedure TDMconn.Eliminar;
begin
  CdtsDetaTransaccion.Delete;
  CdtsDetaTransaccion.ApplyUpdates(0);
  CdtsDetaTransaccion.Close;
  CdtsDetaTransaccion.Open;
end;

procedure TDMconn.Nuevo;
begin
  CdtsDetaTransaccion.Insert;
end;

end.
