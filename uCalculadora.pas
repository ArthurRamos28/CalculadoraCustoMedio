unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, LibSistema, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList;

type
  TfrmCalculadora = class(TForm)
    pnlbackground: TPanel;
    rbPreta: TRadioButton;
    rbBRanca: TRadioButton;
    rbPequena: TRadioButton;
    edtquantidade: TEdit;
    edtPrecoTotal: TEdit;
    edtFrete: TEdit;
    btnCalcular: TButton;
    btnconfig: TSpeedButton;
    pnlconfig: TPanel;
    lblQuantidade: TLabel;
    pnlradio: TPanel;
    lblcusto: TLabel;
    lblPrecoCompra: TLabel;
    lblFrete: TLabel;
    lblmais: TLabel;
    edtresultado: TEdit;
    lblresultado: TLabel;
    pnlresultado: TPanel;
    cbbessencia: TComboBox;
    lblessencia: TLabel;
    pnlMAterial: TPanel;
    rbCera: TRadioButton;
    rbessencia: TRadioButton;
    rbpote: TRadioButton;
    edtunidade: TEdit;
    edtSoma: TEdit;
    lbligual: TLabel;
    lblmedia: TLabel;
    lblresposta: TLabel;
    il1: TImageList;
    btnLimpar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure rbessenciaClick(Sender: TObject);
    procedure edtPrecoTotalExit(Sender: TObject);
    procedure edtFreteExit(Sender: TObject);
    procedure rbpoteClick(Sender: TObject);
    procedure rbCeraClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure rbBRancaClick(Sender: TObject);
    procedure rbPretaClick(Sender: TObject);
    procedure rbPequenaClick(Sender: TObject);
    procedure edtPrecoTotalEnter(Sender: TObject);
    procedure edtFreteEnter(Sender: TObject);
    procedure btnconfigClick(Sender: TObject);
    procedure edtresultadoChange(Sender: TObject);
    procedure but(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure edtPrecoTotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtFreteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnLimparDblClick(Sender: TObject);


  private
    FSoma : TSoma;
    FMedia : TMedia;
    procedure Essencia;
    procedure Medidas;
    procedure LimpaEdit;
    procedure ValoresMediosPadraoEssencia(var mValorMedio: Double);
    procedure MateriasQuantidade(var mPretaCera, mPretaEssencia, mBrancaCera, mBrancaEssencia, mPequenaCera, mPequenaEssencia: Double);
    procedure TextoLabelResultado;
    procedure Calculo;
    function Rendimento(var mRendimento: Double): Double;
    function CustoEssencia: Double;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}


procedure TfrmCalculadora.btnCalcularClick(Sender: TObject);
begin
  Calculo;
  edtresultado.Text := FloatToStr (FMedia.MediaCusto);
end;

procedure TfrmCalculadora.btnconfigClick(Sender: TObject);
var
  mPretaCera, mPretaEssencia, mBrancaCera, mBrancaEssencia, mPequenaCera, mPequenaEssencia  : Double;
begin

  MateriasQuantidade(mPretaCera, mPretaEssencia, mBrancaCera, mBrancaEssencia, mPequenaCera, mPequenaEssencia);

  if (rbPreta.Checked = True) and (rbCera.Checked = True) then
    ShowMessage('Quantidade de Cera Preto usado no Calculo: '+ FloatToStr(mPretaCera) +' Gramas')
  else if (rbPreta.Checked = True) and (rbessencia.Checked = True) then
    ShowMessage('Quantidade de Essencia Preto usado no Calculo: '+ FloatToStr(mPretaEssencia) +' Mililitros')
  else if (rbPreta.Checked = True) and (rbpote.Checked = True) then
    ShowMessage('Quantidade de Essencia Preto usado no Calculo: 1 Unidade')

  else if (rbBranca.Checked = True) and (rbCera.Checked = True) then
    ShowMessage('Quantidade de Essencia Branca usado no Calculo: '+ FloatToStr(mBrancaCera) +' Gramas')
  else if (rbBranca.Checked = True) and (rbessencia.Checked = True) then
    ShowMessage('Quantidade de Essencia Branca usado no Calculo: '+ FloatToStr(mBrancaEssencia) +' Mililitros')
  else if (rbBranca.Checked = True) and (rbpote.Checked = True) then
    ShowMessage('Quantidade de Essencia Branca usado no Calculo: 1 Unidade')

  else if (rbPequena.Checked = True) and (rbCera.Checked = True) then
    ShowMessage('Quantidade de Essencia Pequena usado no Calculo: '+ FloatToStr(mPequenaCera) +' Gramas')
  else if (rbPequena.Checked = True) and (rbessencia.Checked = True) then
    ShowMessage('Quantidade de Essencia Pequena usado no Calculo: '+ FloatToStr(mPequenaEssencia) +' Mililitros')
  else if (rbPequena.Checked = True) and (rbpote.Checked = True) then
    ShowMessage('Quantidade de Essencia Pequena usado no Calculo: 1 Unidades')
end;

procedure TfrmCalculadora.btnLimparClick(Sender: TObject);
begin
  LimpaEdit;
end;

procedure TfrmCalculadora.btnLimparDblClick(Sender: TObject);
begin
  LimpaEdit;
end;

procedure TfrmCalculadora.Calculo;
var
 mValorMedio, mRendimento : Double;
begin
  ValoresMediosPadraoEssencia(mValorMedio);

  lblmedia.Visible := True;

  FMedia := TMedia.Create(edtSoma, edtquantidade, Rendimento(mRendimento));

  Medidas;
end;

procedure TfrmCalculadora.but(Sender: TObject);
var
  mValorMedio : Double;
begin
  ValoresMediosPadraoEssencia(mValorMedio);
end;

function TfrmCalculadora.CustoEssencia: Double;
var
  mValorMedio, mPretaCera, mPretaEssencia, mBrancaCera, mBrancaEssencia, mPequenaCera, mPequenaEssencia : Double;
begin

  MateriasQuantidade(mPretaCera, mPretaEssencia, mBrancaCera, mBrancaEssencia, mPequenaCera, mPequenaEssencia);

  ValoresMediosPadraoEssencia(mValorMedio);

  if (rbPreta.Checked = True) and (rbEssencia.Checked = True) then
    Result := mPretaEssencia * mValorMedio
  else if (rbBranca.Checked = True) and (rbessencia.Checked = True) then
    Result := mBrancaEssencia * mValorMedio
  else if (rbPequena.Checked = True) and (rbessencia.Checked = True) then
    Result := mPequenaEssencia * mValorMedio;
end;

procedure TfrmCalculadora.edtFreteEnter(Sender: TObject);
begin
  edtSoma.Text := FloatToStr(FSoma.SomarProduto);
end;

procedure TfrmCalculadora.edtFreteExit(Sender: TObject);
begin
  edtSoma.Text := FloatToStr(FSoma.SomarProduto);
end;

procedure TfrmCalculadora.edtFreteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then // VK_RETURN é o código virtual do enter
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCalculadora.edtPrecoTotalEnter(Sender: TObject);
begin
  edtSoma.Text := FloatToStr(FSoma.SomarProduto);
end;

procedure TfrmCalculadora.edtPrecoTotalExit(Sender: TObject);
begin
  edtSoma.Text := FloatToStr(FSoma.SomarProduto);
end;

procedure TfrmCalculadora.edtPrecoTotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then // VK_RETURN é o código virtual do enter
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCalculadora.edtresultadoChange(Sender: TObject);
begin
  lblresposta.Visible := True;

  if (rbPreta.Checked = True) and (rbCera.Checked = True) then
    begin
      TextoLabelResultado
    end
  else if (rbPreta.Checked = True) and (rbessencia.Checked = True) then
    begin
      TextoLabelResultado
    end
  else if (rbPreta.Checked = True) and (rbpote.Checked = True) then
    begin
      TextoLabelResultado
    end
  else if (rbBranca.Checked = True) and (rbCera.Checked = True) then
    begin
      TextoLabelResultado
    end
  else if (rbBranca.Checked = True) and (rbessencia.Checked = True) then
    begin
      TextoLabelResultado
    end
  else if (rbBranca.Checked = True) and (rbpote.Checked = True) then
    begin
      TextoLabelResultado
    end

  else if (rbPequena.Checked = True) and (rbCera.Checked = True) then
    begin
      TextoLabelResultado
    end
  else if (rbPequena.Checked = True) and (rbessencia.Checked = True) then
    begin
      TextoLabelResultado
    end
  else if (rbPequena.Checked = True) and (rbpote.Checked = True) then
    begin
      TextoLabelResultado
    end
end;

procedure TfrmCalculadora.Essencia;
begin

  if (rbessencia.Checked = True)  then
    begin
      lblCusto.Top        := 114;
      cbbessencia.Visible := True;
      lblessencia.Visible := True;
    end
  else if (rbessencia.Checked = False) then
    begin
      lblCusto.Top        := 146;
      cbbessencia.Visible := False;
      lblessencia.Visible := False;
    end;
end;

procedure TfrmCalculadora.FormCreate(Sender: TObject);
begin

  FSoma := TSoma.Create(edtPrecoTotal, edtFrete);

  LimpaEdit;

  rbPreta.Checked        := True;
  rbessencia.Checked     := True;

  lblessencia.Caption    := 'Essência';
  lblQuantidade.Caption  := 'Quantidade';
  lblPrecoCompra.Caption := 'Preço de Compra';
  lblFrete.Caption       := 'Frete';
  lblresultado.Caption   := 'Resultado da Média';
end;

procedure TfrmCalculadora.LimpaEdit;
begin
  edtresultado.Text     := '';
  edtquantidade.Text    := FloatToStr (0);
  edtPrecoTotal.Text    := FloatToStr (0);
  edtFrete.Text         := FloatToStr (0);
  edtSoma.Text          := FloatToStr (0);
  lblresposta.Visible   := False;
  cbbessencia.ItemIndex := 0;
end;

procedure TfrmCalculadora.MateriasQuantidade(var mPretaCera, mPretaEssencia, mBrancaCera, mBrancaEssencia, mPequenaCera, mPequenaEssencia : Double);
begin

  if (rbPreta.Checked = True) and (rbCera.Checked = True) then
    mPretaCera := 131.25
  else if (rbPreta.Checked = True) and (rbessencia.Checked = True) then
    mPretaEssencia := 18.75

  else if (rbBranca.Checked = True) and (rbCera.Checked = True) then
    mBrancaCera := 95
  else if (rbBranca.Checked = True) and (rbessencia.Checked = True) then
    mBrancaEssencia := 15

  else if (rbPequena.Checked = True) and (rbCera.Checked = True) then
    mPequenaCera := 21.25
  else if (rbPequena.Checked = True) and (rbessencia.Checked = True) then
    mPequenaEssencia := 3.75;
end;

procedure TfrmCalculadora.Medidas;
begin
  if (rbCera.Checked = True) then
    edtunidade.Text := 'gr'
  else if (rbessencia.Checked = True) then
    edtunidade.Text := 'ml'
  else if (rbpote.Checked = True) then
    edtunidade.Text := 'Und';

  if rbCera.Checked = True  then
    lblmedia.Caption := 'R$/gr'
  else if rbessencia.Checked = True then
    lblmedia.Caption := 'R$/ml'
  else if rbpote.Checked = True then
    lblmedia.Caption := 'R$/unid';
end;

procedure TfrmCalculadora.rbBRancaClick(Sender: TObject);
begin
  LimpaEdit;
end;

procedure TfrmCalculadora.rbCeraClick(Sender: TObject);
begin
  LimpaEdit;
  Essencia;
  Medidas;
end;

procedure TfrmCalculadora.rbessenciaClick(Sender: TObject);
begin
  LimpaEdit;
  Essencia;
  Medidas;
end;

procedure TfrmCalculadora.rbPequenaClick(Sender: TObject);
begin
  LimpaEdit;
end;

procedure TfrmCalculadora.rbpoteClick(Sender: TObject);
begin
  LimpaEdit;
  Essencia;
  Medidas;
end;

procedure TfrmCalculadora.rbPretaClick(Sender: TObject);
begin
  LimpaEdit;
end;

function TfrmCalculadora.Rendimento(var mRendimento: Double): Double;
var
mPretaCera, mPretaEssencia, mBrancaCera, mBrancaEssencia, mPequenaCera, mPequenaEssencia : Double;
begin

  MateriasQuantidade(mPretaCera, mPretaEssencia, mBrancaCera, mBrancaEssencia, mPequenaCera, mPequenaEssencia);

  if (rbPreta.Checked = True) and (rbCera.Checked = True) then
    mRendimento := mPretaCera
  else if (rbPreta.Checked = True) and (rbessencia.Checked = True) then
    mRendimento := mPretaEssencia
  else if (rbPreta.Checked = True) and (rbpote.Checked = True) then
    mRendimento := 1

  else if (rbBranca.Checked = True) and (rbCera.Checked = True) then
    mRendimento := mBrancaCera
  else if (rbBranca.Checked = True) and (rbessencia.Checked = True) then
    mRendimento := mBrancaEssencia
  else if (rbBranca.Checked = True) and (rbpote.Checked = True) then
    mRendimento := 1

  else if (rbPequena.Checked = True) and (rbCera.Checked = True) then
    mRendimento := mPequenaCera
  else if (rbPequena.Checked = True) and (rbessencia.Checked = True) then
    mRendimento := mPequenaEssencia
  else if (rbPequena.Checked = True) and (rbpote.Checked = True) then
    mRendimento := 1;

  Result := mRendimento;
end;

procedure TfrmCalculadora.TextoLabelResultado;
begin
  if ((FMedia.MediaCusto) > CustoEssencia) then
    begin
      lblresposta.Caption  := 'Esta fora do custo';
      lblresposta.Font.Color := clred
    end
  else
    begin
      lblresposta.Caption := 'Esta dentro do custo';
      lblresposta.Font.Color := clgreen
    end
end;

procedure TfrmCalculadora.ValoresMediosPadraoEssencia(var mValorMedio: Double);
begin

  if cbbessencia.ItemIndex = 0 then
    mValorMedio := 0
  else if cbbessencia.ItemIndex = 1 then
    mValorMedio := 0.43
  else if cbbessencia.ItemIndex = 2 then
    mValorMedio := 0.52
  else if cbbessencia.ItemIndex = 3 then
    mValorMedio := 0.27
  else if cbbessencia.ItemIndex = 4 then
    mValorMedio := 0.35
  else if cbbessencia.ItemIndex = 5 then
    mValorMedio := 0.46
  else if cbbessencia.ItemIndex = 6 then
    mValorMedio := 0.35
  else if cbbessencia.ItemIndex = 7 then
    mValorMedio := 0.40
  else if cbbessencia.ItemIndex = 8 then
    mValorMedio := 0.28
  else if cbbessencia.ItemIndex = 9 then
    mValorMedio := 0.30
  else if cbbessencia.ItemIndex = 10 then
    mValorMedio := 0.49;
end;

end.
