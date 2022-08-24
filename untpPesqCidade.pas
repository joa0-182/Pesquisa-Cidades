unit untpPesqCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    dts: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    edtCode: TEdit;
    edtNome: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses untModulo;

procedure TForm1.Button1Click(Sender: TObject);
      var vSQL: string;
begin
      vSQL := '';
      Vsql := 'SELECT * FROM CIDADE ';

      if edtCode.Text <> '' then
        vSQL := vSQL + 'WHERE CODIGO_CIDADE = '+ edtCode.Text;

      if edtNome.Text <> '' then
        vSQL := vSQL + 'WHERE NOME LIKE '+ QuotedStr('%'+edtNome.Text+'%');

      DataModule1.qryCidade.sql.CommaText := vSQL;
      DataModule1.qryCidade.Open;

end;

end.
