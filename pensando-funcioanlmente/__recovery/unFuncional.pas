unit unFuncional;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Types,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfmFuncional = class(TForm)
    edtEntrada: TEdit;
    memoResultado: TMemo;
    btnDobrar: TButton;
    btnFiltraraPares: TButton;
    btnSomarQuadrados: TButton;
    btnLimpar: TButton;

    procedure btnDobrarClick(Sender: TObject);
    procedure btnFiltraraParesClick(Sender: TObject);
    procedure btnSomarQuadradosClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtEntradaKeyPress(Sender: TObject; var Key: Char);

  private
    // Função que converte o texto digitado em uma lista de inteiros
    function ObterLista: TArray<Integer>;

    // Procedimento que exibe uma lista de inteiros no memoResultado
    procedure ExibirLista(lista: TArray<Integer>);
  public
  end;

var
  fmFuncional: TfmFuncional;

implementation

{$R *.dfm}

// multiplica cada número da lista por 2
procedure TfmFuncional.btnDobrarClick(Sender: TObject);
var
  lista, resultado: TArray<Integer>; //Variaveis do tipo Array
  i: integer;
begin
  lista := ObterLista; // Obtém os números digitados         //variável receber a functiona ObterLista que é  uma funactio do tio Tarray
  SetLength(resultado, Length(lista)); // Prepara array de mesmo tamanho
  for I := 0 to High(lista) do
    resultado[i] := lista[i] * 2; // Aplica transformação funcional
  ExibirLista(resultado); // Exibe resultado
end;

//  mantém apenas os números pares
procedure TfmFuncional.btnFiltraraParesClick(Sender: TObject);
var
  lista, resultado: TArray<integer>;
  i, count: integer;
begin
  lista := ObterLista;
  SetLength(resultado, Length(lista)); // Prepara array temporário
  count := 0;
  for I := 0 to High(lista) do
  if lista[i] mod 2 = 0 then // Verifica se é par
    begin
      resultado[count] := lista[i]; // Adiciona ao resultado
      inc(count); // Avança o índice
    end;
  SetLength(resultado, count); // Ajusta tamanho final
  ExibirLista(resultado);
end;

//  apaga entrada e resultados
procedure TfmFuncional.btnLimparClick(Sender: TObject);
begin
  edtEntrada.clear;
  memoResultado.clear;
end;

// soma os quadrados dos números
procedure TfmFuncional.btnSomarQuadradosClick(Sender: TObject);
var
  lista: TArray<Integer>;
  i, soma: Integer;
begin
  lista := ObterLista;
  soma := 0;
  for i := 0 to High(lista) do
    soma := soma + Sqr(lista[i]); // Soma dos quadrados
  MemoResultado.Lines.Add('Soma dos quadrados: ' + IntToStr(soma));
end;

procedure TfmFuncional.edtEntradaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  key := #0;
end;

// Exibe uma lista de inteiros formatada no memoResultado
procedure TfmFuncional.ExibirLista(lista: TArray<integer>);
var
  s: string;
  i: integer;
begin
  s := '';
  for I := 0 to High(lista) do
    s := s + IntToStr(lista[i]) + ', '; // Concatena os valores
  memoResultado.Lines.Add('Resultado: ' + s.TrimRight([',', ' '])); // Remove vírgula final
end;

procedure TfmFuncional.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_ESCAPE then
 begin
  key := 0;
  Close;
 end;

end;

// Converte o texto digitado em uma lista de inteiros
function TfmFuncional.ObterLista: TArray<Integer>;
var
  partes: TArray<string>;
  i: integer;
begin
  partes := String(edtEntrada.Text).split([',']); // Divide por vírgulas
  SetLength(Result, Length(partes));
  for I := 0 to High(partes) do
    Result[i] := StrToIntDef(Trim(partes[i]), 0); // Converte para inteiro, ignorando erros
end;

end.
