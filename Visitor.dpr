program Visitor;

uses
  Vcl.Forms,
  Visitor.View.Carrinho in 'src\Visitor.View.Carrinho.pas' {FViewCarrinho},
  Visitor.Model.Boleto.BancoInter in 'src\Visitor.Model.Boleto.BancoInter.pas',
  Visitor.Contract in 'src\Visitor.Contract.pas',
  Visitor.Model.Carrinho in 'src\Visitor.Model.Carrinho.pas',
  Visitor.Model.Boleto.BancoDoBrasil in 'src\Visitor.Model.Boleto.BancoDoBrasil.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutDown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFViewCarrinho, FViewCarrinho);
  Application.Run;
end.
