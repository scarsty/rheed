unit setting;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}
uses mainform1;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
  MainForm1.n := strtoint(edit1.Text);
  MainForm1.len := strtofloat(edit2.Text);
  MainForm1.ht := strtofloat(edit3.Text);
  Close;
end;

end.
