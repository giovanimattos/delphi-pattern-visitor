unit Visitor.View.Carrinho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFViewCarrinho = class(TForm)
    gbCarrinho: TGroupBox;
    gbPagamento: TGroupBox;
    inputTotal: TLabeledEdit;
    ButtonPagamento: TButton;
    inputBoleto: TRadioGroup;
    inputPessoaNome: TLabeledEdit;
    procedure ButtonPagamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FViewCarrinho: TFViewCarrinho;

implementation

uses
  Visitor.Model.Carrinho, Visitor.Contract, Visitor.Model.Boleto.BancoInter, Visitor.Model.Boleto.BancoDoBrasil;

{$R *.dfm}

procedure TFViewCarrinho.ButtonPagamentoClick(Sender: TObject);
var
  Carrinho: ICarrinho;
  EmissorDeBoleto: IEmissorDeBoleto;
begin

  case inputBoleto.ItemIndex of
    0: EmissorDeBoleto := TBoletoBancoInter.New;
    1: EmissorDeBoleto := TBoletoBancoDoBrasil.New;
  end;

  Carrinho := TModelCarrinho.Create;

  Carrinho
    .Pessoa(inputPessoaNome.Text)
    .Total(StrToCurr(inputTotal.Text))
    .AcceptAndPay( EmissorDeBoleto );

end;

end.
