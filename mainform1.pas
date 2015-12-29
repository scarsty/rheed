unit mainform1;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, Math, ExtDlgs;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Image1: TImage;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    N12: TMenuItem;
    N13: TMenuItem;
    spin1: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure OnShow(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N12Click(Sender: TObject);
    procedure spin1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x, y: array of array of Extended;
  p: array [0..200, 0..100] of Extended;
  pix: array [0..602, 0..302] of integer;
  a, b, alpha, beta: Extended;
  E, Th, gama, lamda: Extended;
  len, ht: Extended;
  n, m: integer;

implementation

uses gridset, experimentset, welcome, setting;

{$R *.lfm}

procedure TForm1.N3Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.N8Click(Sender: TObject);
var
  i, j, k, l, h, kk, ll, t: integer;
  sa, sb, s, r, c: Extended;
  str: string;
begin
  lamda := 6.62559e-34/sqrt(2*9.10908e-31*1.60210e-19*E*(1+1.60210e-19*E/9.10908e-31/2.997925e8/2.997925e8))*1e9;
  setlength(x, n, n);
  setlength(y, n, n);
  s := 0;
  for i := 0 to n-1 do
  for j := 0 to n-1 do
  begin
    x[i,j] := a*i*cos(beta) + b*j*cos(alpha+beta);
    y[i,j] := a*i*sin(beta) + b*j*sin(alpha+beta);
  end;

  for k := -100 to 100 do
  for l := 0 to 100 do
  begin
    sa := 0;
    sb := 0;
    for i := 0 to n-1 do
    for j := 0 to n-1 do
    begin
      r := power(k*ht*1e4+x[i,j],2)+power(l*ht*1e4,2)+power(len*1e6-y[i,j],2);
      r := sqrt(r) + y[i,j]*cos(Th)*cos(gama)+x[i,j]*sin(gama);
      c := r/lamda*2*pi;
      sa := sa + cos(c);
      sb := sb + sin(c);
    end;
    p[k+100,l] := sqrt(sa*sa + sb*sb);
    if s<p[k+100,l] then s := p[k+100,l];
  end;

  h := filecreate('p.txt');
  for l := 0 to 100 do
  begin
    for k := 0 to 200 do
    begin
      pix[k*3+1,l*3+1] := trunc(p[k,l]/n/n*255);
      str := floattostr(p[k,l])+chr(9);
      filewrite(h,str[1],length(str));
    end;
    str := chr(13)+chr(10);
    filewrite(h,str[1],length(str));
  end;
  fileclose(h);
  StatusBar1.Panels[0].Text := ' 电子能量'+floattostr(E)+'eV';
  StatusBar1.Panels[1].Text := ' 入射角'+floattostr(Th/pi*180)+'度';
  StatusBar1.Panels[2].Text := ' 样品到屏幕距离'+floattostr(len)+'mm';
  StatusBar1.Panels[3].Text := ' 原子点数'+inttostr(n*n);
  for k := 0 to 199 do
  for l := 0 to 99 do
  begin
    kk := k*3+1;
    ll := l*3+1;
    pix[kk+1,ll] := trunc(2/3*pix[kk,ll] + 1/3*pix[kk+3,ll]);
    pix[kk+2,ll] := trunc(1/3*pix[kk,ll] + 2/3*pix[kk+3,ll]);
    pix[kk,ll+1] := trunc(2/3*pix[kk,ll] + 1/3*pix[kk,ll+3]);
    pix[kk,ll+2] := trunc(1/3*pix[kk,ll] + 2/3*pix[kk,ll+3]);
    pix[kk+1,ll+1] := trunc(4/9*pix[kk,ll] + 2/9*pix[kk+3,ll] + 2/9*pix[kk,ll+3] + 1/9*pix[kk+3,ll+3]);
    pix[kk+2,ll+1] := trunc(2/9*pix[kk,ll] + 4/9*pix[kk+3,ll] + 1/9*pix[kk,ll+3] + 2/9*pix[kk+3,ll+3]);
    pix[kk+1,ll+2] := trunc(2/9*pix[kk,ll] + 1/9*pix[kk+3,ll] + 4/9*pix[kk,ll+3] + 2/9*pix[kk+3,ll+3]);
    pix[kk+2,ll+2] := trunc(1/9*pix[kk,ll] + 2/9*pix[kk+3,ll] + 2/9*pix[kk,ll+3] + 4/9*pix[kk+3,ll+3]);
  end;

  for k := 1 to 600 do
  for l := 1 to 300 do
    Image1.Canvas.Pixels[k+50,350-l] := rgb(10,pix[k,l],10);

end;

procedure TForm1.N11Click(Sender: TObject);
begin
  Image1.Canvas.Pen.Color := clWhite;
  Image1.Canvas.Rectangle(0,0,700,400);
end;

procedure TForm1.OnShow(Sender: TObject);
begin
  a := strtofloat(Form2.Edit1.Text);
  b := strtofloat(Form2.Edit2.Text);
  alpha := strtofloat(Form2.Edit3.Text)*pi/180;
  beta := strtofloat(Form2.Edit4.Text)*pi/180;
  E := strtofloat(Form3.Edit1.Text);
  gama := strtofloat(Form3.Edit2.Text)*pi/180;
  Th := strtofloat(Form3.Edit3.Text)*pi/180;
  n := strtoint(Form5.edit1.Text);
  len := strtofloat(Form5.edit2.Text);
  ht := strtofloat(Form5.Edit3.Text);
  m := 200;
  Form4.Show;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  StatusBar1.Panels[4].Text := ' ('+inttostr(trunc((x-350)/3*ht/100))+','+inttostr(trunc((350-y)/3*ht/100))+')';
end;

procedure TForm1.N12Click(Sender: TObject);
begin
  SavePictureDialog1.Execute;
  Image1.Picture.SaveToFile(SavePictureDialog1.FileName+'.bmp');
end;

procedure TForm1.spin1Click(Sender: TObject);
begin
  beta := 0.1 ;
  while beta<=0.5 do
  begin
    N8.Click;
    Image1.Picture.SaveToFile(floattostr(beta)+'.bmp');
    beta := beta + 0.01;
  end;
end;

end.
