object Form1: TForm1
  Left = 267
  Top = 199
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RHEED'
  ClientHeight = 423
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = OnShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 404
    Width = 704
    Height = 19
    Panels = <
      item
        Width = 110
      end
      item
        Width = 110
      end
      item
        Width = 150
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 404
    Align = alClient
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 1
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 700
      Height = 400
      Align = alClient
      OnMouseMove = Image1MouseMove
    end
  end
  object MainMenu1: TMainMenu
    Left = 608
    Top = 8
    object N1: TMenuItem
      Caption = #36873#39033
      object spin1: TMenuItem
        Caption = 'spin'
        OnClick = spin1Click
      end
      object N8: TMenuItem
        Caption = #24320#22987
        OnClick = N8Click
      end
      object N11: TMenuItem
        Caption = #28165#31354
        OnClick = N11Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Caption = #28857#38453#21442#25968'...'
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #23454#39564#26465#20214'...'
        OnClick = N4Click
      end
      object N6: TMenuItem
        Caption = #20869#37096#21442#25968'...'
        OnClick = N6Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N12: TMenuItem
        Caption = #23384#20648#22270#20687'...'
        OnClick = N12Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object N7: TMenuItem
        Caption = #36864#20986
        OnClick = N7Click
      end
    end
    object N2: TMenuItem
      Caption = #24110#21161
      object N5: TMenuItem
        Caption = #20851#20110'...'
        OnClick = N5Click
      end
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 568
    Top = 8
  end
end
