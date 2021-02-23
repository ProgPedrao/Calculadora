unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TOperators = (somar, subtrair, Dividir, multiplicar);
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtResultado: TEdit;
    btnSoma: TButton;
    btnSub: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    procedure btnSomaClick(Sender: TObject);
  private
    function Calc(&Operator: TOperators; const Val1, Val2: Double): Double;
    function Sum(const Val1, Val2: Double): Double;
    function Sub(const Val1, Val2: Double): Double;
    function &Div(const Val1, Val2: Double): Double;
    function Mult(const Val1, Val2: Double): Double;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

function TfrmPrincipal.&Div(const Val1, Val2: Double): Double;
begin
  result := Val1 / Val2;
end;

procedure TfrmPrincipal.btnSomaClick(Sender: TObject);
var
  v1, v2, Res: Double;
begin
  v1 := StrToFloat(edtValor1.Text);
  v2 := StrToFloat(edtValor2.Text);
  //
  case TButton(Sender).Caption[1] of
    '+': Res := Calc(somar, v1, v2);
    '*': Res := Calc(multiplicar, v1, v2);
    '-': Res := Calc(subtrair, v1, v2);
    '/': Res := Calc(dividir, v1, v2);
  end;
  //
  edtResultado.Text := FloatToStr(Res);
end;

function TfrmPrincipal.Calc(&Operator: TOperators;
      const Val1, Val2: Double): Double;
begin
  case &Operator of
    somar: result := Sum(Val1, Val2);
    subtrair:  result := Sub(Val1, Val2);
    dividir:  result := &Div(Val1, Val2);
    multiplicar: result := Mult(Val1, Val2);
  end;
end;

function TfrmPrincipal.Mult(const Val1, Val2: Double): Double;
begin
  result := Val1 * Val2;
end;

function TfrmPrincipal.Sub(const Val1, Val2: Double): Double;
begin
  result := Val1 - Val2;
end;

function TfrmPrincipal.Sum(const Val1, Val2: Double): Double;
begin
  result := Val1 + Val2;
end;

end.
