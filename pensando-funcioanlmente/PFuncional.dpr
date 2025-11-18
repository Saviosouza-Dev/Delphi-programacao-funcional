program PFuncional;

uses
  Vcl.Forms,
  unFuncional in 'unFuncional.pas' {fmFuncional};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmFuncional, fmFuncional);
  Application.Run;
end.
