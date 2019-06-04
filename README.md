# Dialog Boxes for VCL Projects (Delphi)
![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-XE..10.3%20Rio-blue.svg)
![Platforms](https://img.shields.io/badge/Platforms-Win32%20and%20Win64-red.svg)

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
![dialogs-vcl](img/Screenshot_1.png)

#### Error dialog box
```
begin
  TDialogs.Error('Error');
end;
``` 
![dialogs-vcl](img/Screenshot_3.png)

#### Warning dialog box
```
begin
  TDialogs.Warning('Warning');
end;
``` 
![dialogs-vcl](img/Screenshot_2.png)

#### Confirm dialog box
```
begin
  if TDialogs.Confirm('Warning') then
    Continue;
end;
``` 
![dialogs-vcl](img/Screenshot_4.png)

#### Input dialog box
```
var
  Name: string;
begin
  Name := TDialogs.Input('Your name:', 'Default value');
end;
``` 
![dialogs-vcl](img/Screenshot_5.png)
