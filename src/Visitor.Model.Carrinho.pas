unit Visitor.Model.Carrinho;

interface

uses
  Visitor.Contract;

type

  TModelCarrinho = class(TInterfacedObject, ICarrinho)
  private
    FPessoa: String;
    FTotal: Currency;
  public
    function Pessoa(Nome: String): ICarrinho; overload;
    function Pessoa: String; overload;
    function Total(Total: Currency): ICarrinho; overload;
    function Total: Currency; overload;
    function AcceptAndPay(EmissorDeBoleto: IEmissorDeBoleto): ICarrinho;
  end;

implementation

{ TModelCarrinho }

function TModelCarrinho.AcceptAndPay(EmissorDeBoleto: IEmissorDeBoleto): ICarrinho;
begin
  Result := Self;
  EmissorDeBoleto.VisitCarrinho( Self ).GeraBoleto;
end;

function TModelCarrinho.Total: Currency;
begin
  Result := FTotal;
end;

function TModelCarrinho.Total(Total: Currency): ICarrinho;
begin
  Result := Self;
  FTotal := Total;
end;

function TModelCarrinho.Pessoa: String;
begin
  Result := FPessoa;
end;

function TModelCarrinho.Pessoa(Nome: String): ICarrinho;
begin
  Result := Self;
  FPessoa := Nome;
end;

end.
