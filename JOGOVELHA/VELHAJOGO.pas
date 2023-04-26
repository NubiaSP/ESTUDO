unit VELHAJOGO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    pnl12: TPanel;
    pnl11: TPanel;
    Pnl10: TPanel;
    Panel5: TPanel;
    pnl32: TPanel;
    pnl31: TPanel;
    pnl30: TPanel;
    Panel9: TPanel;
    pnl22: TPanel;
    pnl21: TPanel;
    pnl20: TPanel;
    pnlRecomeca: TPanel;
    procedure pnlRecomecaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Clickpnl(Sender: TObject);
    procedure pnl11Click(Sender: TObject);
    procedure pnl12Click(Sender: TObject);
    procedure pnl20Click(Sender: TObject);
    procedure pnl21Click(Sender: TObject);
    procedure pnl22Click(Sender: TObject);
    procedure pnl30Click(Sender: TObject);
    procedure pnl31Click(Sender: TObject);
    procedure pnl32Click(Sender: TObject);
  private
    { Private declarations }
    SVez: integer;
    procedure ValidaGanhador;
    procedure SetPainel(pnl:TPanel);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  sVez := 0;
end;

procedure TForm1.Clickpnl(Sender: TObject);
begin
   SetPainel(TPanel(Sender));
end;

procedure TForm1.pnl11Click(Sender: TObject);
begin
SetPainel(TPanel(Sender));
end;

procedure TForm1.pnl12Click(Sender: TObject);
begin
SetPainel(TPanel(Sender));
end;

procedure TForm1.pnl20Click(Sender: TObject);
begin
SetPainel(TPanel(Sender));
end;

procedure TForm1.pnl21Click(Sender: TObject);
begin
SetPainel(TPanel(Sender));
end;

procedure TForm1.pnl22Click(Sender: TObject);
begin
SetPainel(TPanel(Sender));
end;

procedure TForm1.pnl30Click(Sender: TObject);
begin
SetPainel(TPanel(Sender));
end;

procedure TForm1.pnl31Click(Sender: TObject);
begin
  SetPainel(TPanel(Sender));
end;

procedure TForm1.pnl32Click(Sender: TObject);
begin
SetPainel(TPanel(Sender));
end;

procedure TForm1.pnlRecomecaClick(Sender: TObject);
begin
  Pnl10.Caption := ' ';
  pnl11.Caption := ' ';
  Pnl12.Caption := ' ';

  pnl20.Caption := ' ';
  Pnl21.Caption := ' ';
  pnl22.Caption := ' ';

  pnl30.Caption := ' ';
  Pnl31.Caption := ' ';
  pnl32.Caption := ' ';
end;

procedure TForm1.SetPainel(pnl: TPanel);
begin
  if not trim(pnl.Caption).IsEmpty then
  exit;

  if svez = 0 then
begin
  pnl.Caption := 'X';
  svez := 1;
end
else
begin
  pnl.Caption := 'O';
  svez := 0;
end;
  ValidaGanhador;
end;

procedure TForm1.ValidaGanhador;
var
  Linha1: array [0..2] of string;
  Linha2: array [0..2] of string;
  Linha3: array [0..2] of string;
  Ganhador :string;
begin
  Linha1 [0] := Pnl10.Caption;
  Linha1 [1] := pnl11.Caption;
  linha1 [2] := pnl12.Caption;

  linha2 [0] := pnl20.Caption;
  linha2 [1] := pnl21.Caption;
  linha2 [2] := pnl22.Caption;

  linha3 [0] := pnl30.Caption;
  linha3 [1] := pnl31.Caption;
  linha3 [2] := pnl32.Caption;

  if(not linha1[0].IsEmpty) and
    (linha1[0] = linha1[1]) and
    (linha1[0] = linha1[2])then
  begin
    ganhador := linha1[0];
  end;

  if (not linha2[0].IsEmpty) and
     (linha2[0] = linha2[1]) and
     (linha2[0] = linha2[2])then
  begin
    ganhador := linha2[0];
  end;

  if (not Linha3[0].IsEmpty) and
     (linha3[0] = linha3[1]) and
     (linha3[0] = linha3[2]) then
  begin
    ganhador := linha3 [0];
  end;

  if (not linha1[0].IsEmpty) and
     (linha1[0] = linha2[0]) and
     (linha1[0] = linha3[0]) then
  begin
    ganhador := linha1[0];
  end;

  if (not linha1[1].IsEmpty) and
     (linha1[1] = linha2[1]) and
     (linha1[1] = linha3[1]) then
  begin
    ganhador := linha1[1];
  end;

  if (not linha1[2].IsEmpty) and
     (linha1[2] = linha2[2]) and
     (linha1[2] = linha3[2]) then
  begin
    ganhador := linha1[2];
  end;

  if (not linha1[0].IsEmpty) and
     (linha1[0] = linha2[1]) and
     (linha1[0] = linha3[2]) then
  begin
    ganhador := linha1 [0];
  end;

  if (not linha1[2].IsEmpty)  and
     (linha1[2] = linha2 [1]) and
     (linha1[2] = linha3 [0]) then
  begin
    ganhador := linha1[2];
  end;

  if not ganhador.Trim.IsEmpty then
    ShowMessage('Ganhador ' + ganhador)

end;

end.
