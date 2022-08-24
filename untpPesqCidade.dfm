object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 535
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 320
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 240
    Top = 360
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 685
    Height = 289
    Align = alTop
    DataSource = dts
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 288
    Top = 419
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtCode: TEdit
    Left = 344
    Top = 317
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtNome: TEdit
    Left = 344
    Top = 357
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object dts: TDataSource
    DataSet = DataModule1.qryCidade
    Left = 32
    Top = 464
  end
end
