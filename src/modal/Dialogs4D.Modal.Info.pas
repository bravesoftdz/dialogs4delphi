unit Dialogs4D.Modal.Info;

interface

uses Dialogs4D.Modal.Intf;

type
  TDialogModalInfo = class(TInterfacedObject, IDialogModal)
  private
    /// <summary>
    ///   Displays a dialog box for the user with a message.
    /// </summary>
    /// <param name="Content">
    ///   Message to be displayed to the user.
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
procedure TDialogModalInfo.Show(const Content: string);
begin
  MessageDlg(Content, mtInformation, [mbOK]);
end;
{$ELSEIF Defined(MSWINDOWS)}
procedure TDialogModalInfo.Show(const Content: string);
var
  BlockUI: IBlockUI;
begin
  BlockUI := TBlockUI.Create();
  Application.MessageBox(PWideChar(Content), PWideChar(Application.Title), MB_ICONINFORMATION);
end;
{$ELSE}
procedure TDialogModalInfo.Show(const Content: string);
begin
  raise Exception.Create('Not implemented');
end;
{$ENDIF}

end.
