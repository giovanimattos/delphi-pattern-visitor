unit Visitor.Model.Boleto.BancoInter;

interface

uses
  Visitor.Contract, Vcl.Dialogs;

type
  TBoletoBancoInter = class(TInterfacedObject, IEmissorDeBoleto)
  private
    FEmissor: String;
    FCarrinho: ICarrinho;
  public
    class function New: IEmissorDeBoleto;
    constructor Create;
    function VisitCarrinho(Carrinho: ICarrinho): IEmissorDeBoleto;
    function GeraBoleto: IEmissorDeBoleto;
  end;

implementation

uses
  System.SysUtils;

{ TBoletoBancoInter }

class function TBoletoBancoInter.New: IEmissorDeBoleto;
begin
  Result := Create;
end;

constructor TBoletoBancoInter.Create;
begin
  FEmissor := 'Banco Inter';
end;

function TBoletoBancoInter.VisitCarrinho(Carrinho: ICarrinho): IEmissorDeBoleto;
begin
  Result := Self;
  FCarrinho := Carrinho;
end;

function TBoletoBancoInter.GeraBoleto: IEmissorDeBoleto;
begin
  Result := Self;
  ShowMessage(
    Format(
      'Boleto emitido via: %s '+#13+
      'Favorecido: %s '+#13+
      'Total: %8.2f',
      [FEmissor, FCarrinho.Pessoa, FCarrinho.Total])
  );
end;

end.
