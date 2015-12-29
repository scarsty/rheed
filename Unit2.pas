unit Unit2;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}
uses Unit1;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  Unit1.a := strtofloat(Edit1.Text);
  Unit1.b := strtofloat(Edit2.Text);
  Unit1.alpha := strtofloat(Edit3.Text)*pi/180;
  Unit1.beta := strtofloat(Edit4.Text)*pi/180;
  Close;
end;

end.
