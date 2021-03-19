unit Visitor.Model.Boleto.BancoDoBrasil;

interface

uses
  Visitor.Contract, Vcl.Dialogs;

type
  TBoletoBancoDoBrasil = class(TInterfacedObject, IEmissorDeBoleto)
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

{ TBoletoBancoDoBrasil }

class function TBoletoBancoDoBrasil.New: IEmissorDeBoleto;
begin
  Result := Create;
end;

constructor TBoletoBancoDoBrasil.Create;
begin
  FEmissor := 'Banco Do Brasil';
end;

function TBoletoBancoDoBrasil.VisitCarrinho(Carrinho: ICarrinho): IEmissorDeBoleto;
begin
  Result := Self;
  FCarrinho := Carrinho;
end;

function TBoletoBancoDoBrasil.GeraBoleto: IEmissorDeBoleto;
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
