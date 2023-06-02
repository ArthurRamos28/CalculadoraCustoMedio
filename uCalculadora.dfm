object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 619
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlbackground: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 619
    Align = alClient
    BevelKind = bkTile
    BorderStyle = bsSingle
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 0
    object lblQuantidade: TLabel
      Left = 27
      Top = 279
      Width = 115
      Height = 22
      Caption = 'lblQuantidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblcusto: TLabel
      Left = 58
      Top = 114
      Width = 348
      Height = 22
      Caption = 'Calculadora de Custo para novas compras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPrecoCompra: TLabel
      Left = 25
      Top = 197
      Width = 135
      Height = 22
      Caption = 'lblPrecoCompra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFrete: TLabel
      Left = 209
      Top = 197
      Width = 64
      Height = 22
      Caption = 'lblFrete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblmais: TLabel
      Left = 186
      Top = 218
      Width = 17
      Height = 29
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblresultado: TLabel
      Left = 136
      Top = 356
      Width = 96
      Height = 22
      Caption = 'lblresultado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblessencia: TLabel
      Left = 25
      Top = 142
      Width = 88
      Height = 22
      Caption = 'lblessencia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lbligual: TLabel
      Left = 340
      Top = 219
      Width = 15
      Height = 25
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblmedia: TLabel
      Left = 359
      Top = 379
      Width = 96
      Height = 22
      Caption = 'lblresultado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btnLimpar: TSpeedButton
      Left = 1
      Top = 475
      Width = 429
      Height = 22
      Caption = 'Novo'
      Flat = True
      OnClick = btnLimparClick
      OnDblClick = btnLimparDblClick
    end
    object edtquantidade: TEdit
      Left = 25
      Top = 301
      Width = 155
      Height = 29
      Hint = 'Insira a quantidade em ML'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object edtPrecoTotal: TEdit
      Left = 25
      Top = 218
      Width = 155
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = edtPrecoTotalEnter
      OnExit = edtPrecoTotalExit
      OnKeyDown = edtPrecoTotalKeyDown
    end
    object edtFrete: TEdit
      Left = 209
      Top = 218
      Width = 125
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnEnter = edtFreteEnter
      OnExit = edtFreteExit
      OnKeyDown = edtFreteKeyDown
    end
    object btnCalcular: TButton
      Left = 37
      Top = 517
      Width = 340
      Height = 78
      Caption = 'Calcular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -32
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = btnCalcularClick
    end
    object pnlconfig: TPanel
      Left = 389
      Top = 561
      Width = 37
      Height = 30
      TabOrder = 11
      object btnconfig: TSpeedButton
        Left = 1
        Top = 1
        Width = 35
        Height = 28
        Align = alClient
        DisabledImageIndex = 0
        ImageIndex = 0
        Images = il1
        HotImageIndex = 0
        Flat = True
        OnClick = btnconfigClick
        ExplicitLeft = -7
        ExplicitTop = 5
        ExplicitWidth = 42
        ExplicitHeight = 37
      end
    end
    object pnlradio: TPanel
      Left = 1
      Top = 1
      Width = 438
      Height = 61
      Align = alTop
      BevelKind = bkTile
      TabOrder = 0
      object rbBRanca: TRadioButton
        Left = 172
        Top = 15
        Width = 113
        Height = 27
        Caption = 'Branca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rbBRancaClick
      end
      object rbPequena: TRadioButton
        Left = 314
        Top = 15
        Width = 111
        Height = 27
        Caption = 'Pequena'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = rbPequenaClick
      end
      object rbPreta: TRadioButton
        Left = 24
        Top = 14
        Width = 113
        Height = 27
        Caption = 'Preta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rbPretaClick
      end
    end
    object edtresultado: TEdit
      Left = 73
      Top = 377
      Width = 282
      Height = 29
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnChange = edtresultadoChange
    end
    object pnlresultado: TPanel
      Left = 4
      Top = 431
      Width = 419
      Height = 38
      TabOrder = 9
      object lblresposta: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 411
        Height = 30
        Align = alClient
        Alignment = taCenter
        Caption = 'lblresposta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        ExplicitWidth = 89
        ExplicitHeight = 22
      end
    end
    object cbbessencia: TComboBox
      Left = 25
      Top = 165
      Width = 403
      Height = 29
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'Nenhuma'
      Visible = False
      OnChange = but
      Items.Strings = (
        'Nenhuma'
        'Capim Lim'#227'o + Alecrim'
        'Frutas C'#237'tricas'
        'Tutti Fruti'
        'Rosas e Jasmim'
        'Frutas + Caramelo'
        'Bergamota e Neroli'
        'Lavanda Cipreste'
        'Bamboo'
        'A'#231'ai + Framboesa'
        'Flores + Especiarias')
    end
    object pnlMAterial: TPanel
      Left = 1
      Top = 62
      Width = 438
      Height = 46
      Align = alTop
      BevelInner = bvSpace
      BevelKind = bkTile
      TabOrder = 1
      object rbCera: TRadioButton
        Left = 38
        Top = 15
        Width = 86
        Height = 17
        Caption = 'Cera'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rbCeraClick
      end
      object rbessencia: TRadioButton
        Left = 172
        Top = 15
        Width = 113
        Height = 17
        Caption = 'Ess'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rbessenciaClick
      end
      object rbpote: TRadioButton
        Left = 314
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Pote'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = rbpoteClick
      end
    end
    object edtunidade: TEdit
      Left = 186
      Top = 301
      Width = 46
      Height = 29
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edtSoma: TEdit
      Left = 361
      Top = 218
      Width = 69
      Height = 29
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object il1: TImageList
    Left = 394
    Top = 329
    Bitmap = {
      494C010101000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000FF000000FF00000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF12121200000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      00000000000000000000D1D1D100000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF00000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000FF0000
      00FF000000FF000000FF000000FF0000000000000000000000FF000000FF0000
      00FF000000FF000000FF00000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000006464
      6400000000FF000000FF00000000000000000000000000000000000000FF0000
      00FF000000000000000008080800000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      00FF000000FF0000000000000000000000FF000000FF00000000000000000000
      00FF000000FF00000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      00FF000000FF0000000000000000000000FF000000FF00000000000000000000
      00FF000000FF00000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF1A1A1A00000000003F3F
      3F00000000FF000000FF00000000000000000000000000000000000000FF0000
      00FF0000000000000000D7D7D700000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000FF0000
      00FF000000FF000000FF000000FF0000000000000000000000FF000000FF0000
      00FF000000FF000000FF00000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF00000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      000000000000000000000B0B0B00000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000FF000000FF00000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000020202000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FE7F000000000000FC3F000000000000
      FDBF0000000000008181000000000000A7E5000000000000BE7D000000000000
      8C31000000000000D99B000000000000D99B0000000000008C31000000000000
      BE7D000000000000A7E50000000000008181000000000000FDBF000000000000
      FC3F000000000000FE7F00000000000000000000000000000000000000000000
      000000000000}
  end
end
