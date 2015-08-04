unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  Close;
end;

procedure TForm4.Image1Click(Sender: TObject);
begin
  Close;
end;

end.
 