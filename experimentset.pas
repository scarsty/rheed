unit experimentset;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}
uses MainForm1;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  MainForm1.E := strtofloat(Edit1.Text);
  MainForm1.gama := strtofloat(Edit2.Text)*pi/180;
  MainForm1.Th := strtofloat(Edit3.Text)*pi/180;
  Close;
end;

end.
