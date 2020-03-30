program Fenix;























{$R *.dres}

uses
  Vcl.Forms,
  UNTprincipal in 'UNTprincipal.pas' {ForEmpresas},
  UNTconn in 'UNTconn.pas' {DMconn: TDataModule},
  UNTmenuprincipal in 'UNTmenuprincipal.pas' {ForMenuPrincipal},
  UNTfactura in 'UNTfactura.pas' {FrmFactura: TFrame},
  UntFrmDatosEmpresa in 'UntFrmDatosEmpresa.pas' {FrmDatosEmpresa: TFrame},
  UNTnotacredito in 'UNTnotacredito.pas' {FrmNotaCredito: TFrame},
  UNTfacturaexp in 'UNTfacturaexp.pas' {FrmFacturaExp: TFrame},
  UntSplash in 'UntSplash.pas' {FrmSplash},
  UNTfacturausada in 'UNTfacturausada.pas' {FrmFacturaUsada: TFrame},
  UNTagregarfactura in 'UNTagregarfactura.pas' {FrmAgregarFactura},
  UntSplasEspera in 'UntSplasEspera.pas' {FrmSplasEspera},
  UNTbasededatos in 'UNTbasededatos.pas' {Frmbasededatos},
  UNTerrorlicencia in 'UNTerrorlicencia.pas' {FrmErrorLicencia},
  UNTerrornumlicencia in 'UNTerrornumlicencia.pas' {FrmErrorNumLic},
  UNTestadisticasfact in 'UNTestadisticasfact.pas' {FrmEstadisticasFact: TFrame},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('TabletDark');
  Application.CreateForm(TDMconn, DMconn);
  Application.CreateForm(TForMenuPrincipal, ForMenuPrincipal);
  Application.CreateForm(TFrmErrorLicencia, FrmErrorLicencia);
  Application.CreateForm(TFrmErrorNumLic, FrmErrorNumLic);
  Application.Run;
end.