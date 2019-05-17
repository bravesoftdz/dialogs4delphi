# Dialog Boxes for VCL Projects (Delphi)
This package allows you to lock and unlock the user interface in a simple way.

### Prerequisites
 * [**Boss**](https://github.com/HashLoad/boss) - Dependency Manager for Delphi
 * [**BlockUI-VCL**](https://github.com/viniciussanchez/blockui-vcl) - Block User Interface for VCL Projects (Delphi)
 
### Installation: 
```
boss install github.com/viniciussanchez/dialogs-vcl
```

### Getting Started
You need to use Dialogs.Factory
```
uses Dialogs.Factory;
```

#### Success dialog box
```
begin
  TDialogs.Info('Information');
end;
``` 

#### Error dialog box
```
begin
  TDialogs.Error('Error');
end;
``` 

#### Warning dialog box
```
begin
  TDialogs.Warning('Warning');
end;
``` 

#### Confirm dialog box
```
begin
  if TDialogs.Confirm('Warning') then
    Continue;
end;
``` 

#### Input dialog box
```
var
  Name: string;
begin
  Name := TDialogs.Input('Your name:', 'Default value');
end;
``` 
