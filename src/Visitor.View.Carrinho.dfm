object FViewCarrinho: TFViewCarrinho
  Left = 0
  Top = 0
  Caption = 'Carrinho'
  ClientHeight = 334
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gbCarrinho: TGroupBox
    Left = 8
    Top = 8
    Width = 257
    Height = 137
    Caption = 'Carrinho'
    TabOrder = 0
    object inputTotal: TLabeledEdit
      Left = 16
      Top = 88
      Width = 225
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Total'
      EditLabel.ParentBiDiMode = False
      TabOrder = 0
      Text = '10,00'
    end
    object inputPessoaNome: TLabeledEdit
      Left = 16
      Top = 40
      Width = 225
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Pessoa'
      EditLabel.ParentBiDiMode = False
      TabOrder = 1
      Text = 'Giovani'
    end
  end
  object gbPagamento: TGroupBox
    Left = 8
    Top = 163
    Width = 257
    Height = 166
    Caption = 'Pagamento'
    TabOrder = 1
    object ButtonPagamento: TButton
      Left = 16
      Top = 110
      Width = 225
      Height = 41
      Caption = 'Efetuar Pagamento'
      TabOrder = 0
      OnClick = ButtonPagamentoClick
    end
    object inputBoleto: TRadioGroup
      Left = 16
      Top = 36
      Width = 225
      Height = 57
      Caption = 'Boleto'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Banco Inter'
        'Banco do Brasil')
      TabOrder = 1
    end
  end
end
