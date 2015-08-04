object Form5: TForm5
  Left = 362
  Top = 215
  BorderStyle = bsDialog
  Caption = #20869#37096#21442#25968
  ClientHeight = 234
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 152
    Width = 241
    Height = 57
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 136
      Top = 16
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 16
    Width = 241
    Height = 129
    Caption = #38271#24230#21333#20301#20026'mm'
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 99
      Height = 13
      Caption = #27169#25311#30340#21407#23376#25968#37327'     '
    end
    object Label2: TLabel
      Left = 24
      Top = 60
      Width = 99
      Height = 13
      Caption = #26679#21697#21040#23631#24149#36317#31163'     '
    end
    object Label3: TLabel
      Left = 24
      Top = 92
      Width = 99
      Height = 13
      Caption = #23631#24149#30340#21322#23485#21644#39640'     '
    end
    object Edit1: TEdit
      Left = 144
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '16'
    end
    object Edit2: TEdit
      Left = 144
      Top = 56
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '500'
    end
    object Edit3: TEdit
      Left = 144
      Top = 88
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '250'
    end
  end
end
