unit Visitor.Contract;

interface

type

  IEmissorDeBoleto = interface;

  ICarrinho = interface
    ['{16CC7D07-EDFC-461B-846C-40C02C046C23}']
    function Pessoa(Nome: String): ICarrinho; overload;
    function Pessoa: String; overload;
    function Total(Total: Currency): ICarrinho; overload;
    function Total: Currency; overload;
    function AcceptAndPay(EmissorDeBoleto: IEmissorDeBoleto): ICarrinho;
  end;

  IEmissorDeBoleto = interface
    ['{2449BB9A-2BB7-49FC-B7E5-829647CFB18A}']
    function VisitCarrinho(Carrinho: ICarrinho): IEmissorDeBoleto;
    function GeraBoleto: IEmissorDeBoleto;
  end;

implementation

end.
