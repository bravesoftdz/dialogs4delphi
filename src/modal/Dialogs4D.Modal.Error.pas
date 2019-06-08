unit Dialogs4D.Modal.Error;

interface

uses Dialogs4D.Modal.Intf;

type
  TDialogModalError = class(TInterfacedObject, IDialogModal)
  private
    /// <summary>
    ///   Displays a dialog box for the user with a error message.
    /// </summary>
    /// <param name="Content">
    ///   Error message to be displayed to the user.
    /// </param>
    procedure Show(const Content: string);
  end;

implementation

uses
{$IF Defined(UNIGUI_VCL) or Defined(UNIGUI_ISAPI)}
  UniGuiDialogs, UniGuiTypes,
{$ELSEIF Defined(MSWINDOWS)}
  Vcl.Forms, Winapi.Windows, Vcl.BlockUI.Intf, Vcl.BlockUI,
{$ENDIF}
  System.SysUtils;

{$IF Defined(UNIGUI_VCL) or Defined(UNIGUI_ISAPI)}
procedure TDialogModalError.Show(const Content: string);
begin
  MessageDlg(Content, mtError, [mbOK]);
end;
{$ELSEIF Defined(MSWINDOWS)}
procedure TDialogModalError.Show(const Content: string);
var
  BlockUI: IBlockUI;
begin
  BlockUI := TBlockUI.Create();
  Application.MessageBox(PWideChar(Content), PWideChar(Application.Title), MB_ICONHAND);
end;
{$ELSE}
procedure TDialogModalError.Show(const Content: string);
begin
  raise Exception.Create('Not implemented');
end;
{$ENDIF}

end.
