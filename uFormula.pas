unit uFormula;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
 Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TSoma = class

  private
  FProduto: TEdit;
  FFrete:   TEdit;


  public
  constructor Create (AProduto, AFrete: TEdit);
  destructor Destroy; override;
  function SomarProduto: Double;


 End;

  TMedia = Class

  private
  FResultado:  TEdit;
  FQuantidade: TEdit;
  FRendimento: Double;

  public
  constructor Create (AResultado, AQuantidade: TEdit; ARendimento: Double);
  destructor Destroy; override;
  function MediaCusto: Double;
 End;



implementation

{ TCalculo }

constructor TSoma.Create(AProduto, AFrete: TEdit);
begin
  FProduto    := AProduto;
  FFrete      := AFrete;
end;



destructor TSoma.Destroy;
begin
  inherited;
  FreeAndNil(FProduto);
  FreeAndNil(FFrete);

end;

function TSoma.SomarProduto: Double;
var
  vValorProduto, vValorFrete : Double;
begin

  vValorProduto := StrToFloat (FProduto.Text);
  vValorFrete   := StrToFloat (FFrete.Text);

  Result := vValorProduto + vValorFrete;
end;

{ TMedia }

constructor TMedia.Create(AResultado, AQuantidade: TEdit; ARendimento: Double);
begin
  FResultado   := AResultado;
  FQuantidade  := AQuantidade;
  FRendimento  := ARendimento;
end;

destructor TMedia.Destroy;
begin
  FreeAndNil(FResultado);
  FreeAndNil(FQuantidade);
end;

function TMedia.MediaCusto: Double;
var
  vPrecoFinal, vQuantidade, vRendimento : Double;
begin

  if ((StrToFloat (FResultado.Text)) <= 0) then
    begin
      ShowMessage('Não é possivel dividir por zero, insira um valor divisivel');
      abort;
    end;

  vPrecoFinal := StrToFloat (FResultado.Text);
  vQuantidade := StrToFloat (FQuantidade.Text);
  vRendimento := FRendimento;

  Result := ((vPrecoFinal / vQuantidade) * (vRendimento));
end;

end.
