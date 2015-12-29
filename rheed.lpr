program rheed;

{$MODE Delphi}

uses
  Forms, Interfaces,
  mainform1 {Form1},
  gridset {Form2},
  experimentset {Form3},
  welcome {Form4},
  setting {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
