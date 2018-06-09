function varargout = GUI(varargin)
%GUI MATLAB code file for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('Property','Value',...) creates a new GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to GUI_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUI('CALLBACK') and GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 02-Apr-2018 19:11:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for GUI


% Update handles structure
guidata(hObject, handles);
global imp_flag
global scale
scale = 0;
serialPorts = instrhwinfo('Serial');
%nPorts = length(serialPorts.SerialPorts);
set(handles.portList,'String',[{'select a port'} ; serialPorts.SerialPorts]);
set(handles.portList,'Value',2);
%delete(instrfind({'Port'},{'serPort'}))
global a
axes(handles.axes2)
A = imread('LOGO.png')
[L,W,D] = size(A);
for i = 1:L
  for j = 1:W
      for k = 1:D
          if A(i,j,k) == 0
              A(i,j,k) = 240; 
          end
      end
  end
end
imshow(A)
% global com;
% [~,res]=system('mode');
% com = regexp(res,'COM\d+:','match')'
% disp(com);
% %temp_cellstr = {com(1);com(2);'choice 3'};
% set(handles.com_port,'String',com);
% UIWAIT makes GUI wait for user response (see UIRESUME)
%uiwait(handles.figure1);
handles.output = hObject;
guidata(hObject,handles);




% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function cell_1_Callback(hObject, eventdata, handles)
% hObject    handle to cell_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_1 as text
%        str2double(get(hObject,'String')) returns contents of cell_1 as a double


% --- Executes during object creation, after setting all properties.
function cell_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_2_Callback(hObject, eventdata, handles)
% hObject    handle to cell_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_2 as text
%        str2double(get(hObject,'String')) returns contents of cell_2 as a double


% --- Executes during object creation, after setting all properties.
function cell_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_3_Callback(hObject, eventdata, handles)
% hObject    handle to cell_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_3 as text
%        str2double(get(hObject,'String')) returns contents of cell_3 as a double


% --- Executes during object creation, after setting all properties.
function cell_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_6_Callback(hObject, eventdata, handles)
% hObject    handle to cell_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_6 as text
%        str2double(get(hObject,'String')) returns contents of cell_6 as a double


% --- Executes during object creation, after setting all properties.
function cell_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_4_Callback(hObject, eventdata, handles)
% hObject    handle to cell_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_4 as text
%        str2double(get(hObject,'String')) returns contents of cell_4 as a double


% --- Executes during object creation, after setting all properties.
function cell_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_5_Callback(hObject, eventdata, handles)
% hObject    handle to cell_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_5 as text
%        str2double(get(hObject,'String')) returns contents of cell_5 as a double


% --- Executes during object creation, after setting all properties.
function cell_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_7_Callback(hObject, eventdata, handles)
% hObject    handle to cell_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_7 as text
%        str2double(get(hObject,'String')) returns contents of cell_7 as a double


% --- Executes during object creation, after setting all properties.
function cell_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_8_Callback(hObject, eventdata, handles)
% hObject    handle to cell_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_8 as text
%        str2double(get(hObject,'String')) returns contents of cell_8 as a double


% --- Executes during object creation, after setting all properties.
function cell_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_9_Callback(hObject, eventdata, handles)
% hObject    handle to cell_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_9 as text
%        str2double(get(hObject,'String')) returns contents of cell_9 as a double


% --- Executes during object creation, after setting all properties.
function cell_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_10_Callback(hObject, eventdata, handles)
% hObject    handle to cell_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_10 as text
%        str2double(get(hObject,'String')) returns contents of cell_10 as a double


% --- Executes during object creation, after setting all properties.
function cell_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_11_Callback(hObject, eventdata, handles)
% hObject    handle to cell_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_11 as text
%        str2double(get(hObject,'String')) returns contents of cell_11 as a double


% --- Executes during object creation, after setting all properties.
function cell_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_12_Callback(hObject, eventdata, handles)
% hObject    handle to cell_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_12 as text
%        str2double(get(hObject,'String')) returns contents of cell_12 as a double


% --- Executes during object creation, after setting all properties.
function cell_12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cell_13_Callback(hObject, eventdata, handles)
% hObject    handle to cell_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cell_13 as text
%        str2double(get(hObject,'String')) returns contents of cell_13 as a double


% --- Executes during object creation, after setting all properties.
function cell_13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cell_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_1_Callback(hObject, eventdata, handles)
% hObject    handle to bal_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_1 as text
%        str2double(get(hObject,'String')) returns contents of bal_1 as a double


% --- Executes during object creation, after setting all properties.
function bal_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_2_Callback(hObject, eventdata, handles)
% hObject    handle to bal_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_2 as text
%        str2double(get(hObject,'String')) returns contents of bal_2 as a double


% --- Executes during object creation, after setting all properties.
function bal_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_3_Callback(hObject, eventdata, handles)
% hObject    handle to bal_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_3 as text
%        str2double(get(hObject,'String')) returns contents of bal_3 as a double


% --- Executes during object creation, after setting all properties.
function bal_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_6_Callback(hObject, eventdata, handles)
% hObject    handle to bal_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_6 as text
%        str2double(get(hObject,'String')) returns contents of bal_6 as a double


% --- Executes during object creation, after setting all properties.
function bal_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_4_Callback(hObject, eventdata, handles)
% hObject    handle to bal_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_4 as text
%        str2double(get(hObject,'String')) returns contents of bal_4 as a double


% --- Executes during object creation, after setting all properties.
function bal_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_5_Callback(hObject, eventdata, handles)
% hObject    handle to bal_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_5 as text
%        str2double(get(hObject,'String')) returns contents of bal_5 as a double


% --- Executes during object creation, after setting all properties.
function bal_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_8_Callback(hObject, eventdata, handles)
% hObject    handle to bal_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_8 as text
%        str2double(get(hObject,'String')) returns contents of bal_8 as a double


% --- Executes during object creation, after setting all properties.
function bal_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_9_Callback(hObject, eventdata, handles)
% hObject    handle to bal_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_9 as text
%        str2double(get(hObject,'String')) returns contents of bal_9 as a double


% --- Executes during object creation, after setting all properties.
function bal_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_10_Callback(hObject, eventdata, handles)
% hObject    handle to bal_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_10 as text
%        str2double(get(hObject,'String')) returns contents of bal_10 as a double


% --- Executes during object creation, after setting all properties.
function bal_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_11_Callback(hObject, eventdata, handles)
% hObject    handle to bal_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_11 as text
%        str2double(get(hObject,'String')) returns contents of bal_11 as a double


% --- Executes during object creation, after setting all properties.
function bal_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_12_Callback(hObject, eventdata, handles)
% hObject    handle to bal_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_12 as text
%        str2double(get(hObject,'String')) returns contents of bal_12 as a double


% --- Executes during object creation, after setting all properties.
function bal_12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_13_Callback(hObject, eventdata, handles)
% hObject    handle to bal_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_13 as text
%        str2double(get(hObject,'String')) returns contents of bal_13 as a double


% --- Executes during object creation, after setting all properties.
function bal_13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bal_7_Callback(hObject, eventdata, handles)
% hObject    handle to bal_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bal_7 as text
%        str2double(get(hObject,'String')) returns contents of bal_7 as a double


% --- Executes during object creation, after setting all properties.
function bal_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bal_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cal_volt_Callback(hObject, eventdata, handles)
% hObject    handle to cal_volt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cal_volt as text
%        str2double(get(hObject,'String')) returns contents of cal_volt as a double


% --- Executes during object creation, after setting all properties.
function cal_volt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cal_volt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function measured_volt_Callback(hObject, eventdata, handles)
% hObject    handle to measured_volt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of measured_volt as text
%        str2double(get(hObject,'String')) returns contents of measured_volt as a double


% --- Executes during object creation, after setting all properties.
function measured_volt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to measured_volt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function current_1_Callback(hObject, eventdata, handles)
% hObject    handle to current_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of current_1 as text
%        str2double(get(hObject,'String')) returns contents of current_1 as a double


% --- Executes during object creation, after setting all properties.
function current_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to current_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function batt_Callback(hObject, eventdata, handles)
% hObject    handle to batt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of batt as text
%        str2double(get(hObject,'String')) returns contents of batt as a double


% --- Executes during object creation, after setting all properties.
function batt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to batt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dsg_Callback(hObject, eventdata, handles)
% hObject    handle to dsg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dsg as text
%        str2double(get(hObject,'String')) returns contents of dsg as a double


% --- Executes during object creation, after setting all properties.
function dsg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dsg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function chg_Callback(hObject, eventdata, handles)
% hObject    handle to chg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chg as text
%        str2double(get(hObject,'String')) returns contents of chg as a double


% --- Executes during object creation, after setting all properties.
function chg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temp_1_Callback(hObject, eventdata, handles)
% hObject    handle to temp_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temp_1 as text
%        str2double(get(hObject,'String')) returns contents of temp_1 as a double


% --- Executes during object creation, after setting all properties.
function temp_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temp_2_Callback(hObject, eventdata, handles)
% hObject    handle to temp_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temp_2 as text
%        str2double(get(hObject,'String')) returns contents of temp_2 as a double


% --- Executes during object creation, after setting all properties.
function temp_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temp_3_Callback(hObject, eventdata, handles)
% hObject    handle to temp_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temp_3 as text
%        str2double(get(hObject,'String')) returns contents of temp_3 as a double


% --- Executes during object creation, after setting all properties.
function temp_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temp_4_Callback(hObject, eventdata, handles)
% hObject    handle to temp_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temp_4 as text
%        str2double(get(hObject,'String')) returns contents of temp_4 as a double


% --- Executes during object creation, after setting all properties.
function temp_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Port_Callback(hObject, eventdata, handles)
% hObject    handle to Port (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Port_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Port (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global imp_flag;
global scale;
imp_flag = 0;
serPortn = get(handles.portList,'Value');
set(handles.figure1, 'pointer', 'watch')
drawnow;
blue=@(x) x*(heaviside(x)-heaviside(x-1))+ 1*(heaviside(x-1)-heaviside(x-2))+(3-x)*(heaviside(x-2)-heaviside(x-3));
green=@(x) (x-1)*(heaviside(x-1)-heaviside(x-2))+ 1*(heaviside(x-2)-heaviside(x-3))+(4-x)*(heaviside(x-3)-heaviside(x-4));
red=@(x) (x-2)*(heaviside(x-2)-heaviside(x-3))+ 1*(heaviside(x-3));
serList = get(handles.portList,'String');
try
        
        serPort = serList(serPortn);
        clear a;
        a = serial(serPort,'Timeout',20,'Baudrate',str2double(get(handles.baudRateText,'String')));
        fopen(a);
        pause(2);
    while imp_flag == 0
        data = fgetl(a);
        pause(0.001);
        disp('Receiving');
        if strfind(data,'Voltages:') ~= 0
            z = str2double(strsplit(data));
            if isequal(size(z),[1 15]) == 1
                set(handles.cell_1,'String',z(2));
                set(handles.cell_2,'String',z(3));
                set(handles.cell_3,'String',z(4));
                set(handles.cell_4,'String',z(5));
                set(handles.cell_5,'String',z(6));
                set(handles.cell_6,'String',z(7));
                set(handles.cell_7,'String',z(8));
                set(handles.cell_8,'String',z(9));
                set(handles.cell_9,'String',z(10));
                set(handles.cell_10,'String',z(11));
                set(handles.cell_11,'String',z(12));
                set(handles.cell_12,'String',z(13));
                set(handles.cell_13,'String',z(14));
                axes(handles.axes4);
                for i=1:1:14
                    zz(i)=z(i+1);
                end
                b=bar(zz,'g');
                set(gca,'color',[0.941 0.941 0.941])
                axis ([0 14 2.5 4.5])
                text(1:length(zz),zz,num2str(zz'),'vert','bottom','horiz','center'); 
                box off
        end
             total=z(2)+z(3)+z(4)+z(5)+z(6)+z(7)+z(8)+z(9)+z(10)+z(11)+z(12)+z(13)+z(14);
             set(handles.cal_volt,'String',total);
             set(handles.cal_volt,'BackgroundColor','green');

          elseif strfind(data,'Current:') ~= 0
              z = str2double(strsplit(data));
              set(handles.current_1,'String',z(2));
              if z(2)>= 1.0
                  set(handles.charging_stat,'String',"Charging");
                  set(handles.charging_stat,'BackgroundColor',[0.47 0.67 0.19]);
              elseif z(2)<= -1.0
                  set(handles.charging_stat,'String',"Discharging");
                  set(handles.charging_stat,'BackgroundColor',[0.89 0.2 0.2]);
              else
                  set(handles.charging_stat,'String',"Idle");
                  set(handles.charging_stat,'BackgroundColor',[0 1 1]);
              end
              scale=scale+1;
              axes(handles.axes3);
              value(scale)=(z(2))
              area(-(value));
              drawnow;
              grid on;
              
              axis auto
              pause(0.01);
          elseif strfind(data,'Temperature:') ~= 0
              z = str2double(strsplit(data));
              set(handles.temp_1,'String',z(2));
              set(handles.temp_2,'String',z(3));
              set(handles.temp_3,'String',z(4));
              set(handles.temp_4,'String',z(5));
          elseif strfind(data,'status:') ~= 0
               z = str2double(strsplit(data));
               set(handles.batt,'String',z(3));
          elseif strfind(data,'Total') ~= 0
               z = str2double(strsplit(data));
               set(handles.measured_volt,'String',z(3));
          elseif strfind(data,'Charging') ~= 0
               z = strsplit(data);
               set(handles.chg,'String',z(3));
               if strcmp(z(3),'ON')
                   set(handles.chg,'BackgroundColor','green');
               else 
                   set(handles.chg,'BackgroundColor','red');
               end
          elseif strfind(data,'Discharging') ~= 0
               z = strsplit(data);
               set(handles.dsg,'String',z(3));
               if strcmp(z(3),'ON')
                   set(handles.dsg,'BackgroundColor','green');
               else 
                   set(handles.dsg,'BackgroundColor','red');
               end
          elseif strfind(data,'Balancing:') ~= 0
               z = strsplit(data);
               set(handles.bal_1,'String','OFF');
               set(handles.bal_2,'String','OFF');
               set(handles.bal_3,'String','OFF');
               set(handles.bal_4,'String','OFF');
               set(handles.bal_5,'String','OFF');
               set(handles.bal_6,'String','OFF');
               set(handles.bal_7,'String','OFF');
               set(handles.bal_8,'String','OFF');
               set(handles.bal_9,'String','OFF');
               set(handles.bal_10,'String','OFF');
               set(handles.bal_11,'String','OFF');
               set(handles.bal_12,'String','OFF');
               set(handles.bal_13,'String','OFF');
               set(handles.bal_1,'BackgroundColor','red');
               set(handles.bal_2,'BackgroundColor','red');
               set(handles.bal_3,'BackgroundColor','red');
               set(handles.bal_4,'BackgroundColor','red');
               set(handles.bal_5,'BackgroundColor','red');
               set(handles.bal_6,'BackgroundColor','red');
               set(handles.bal_7,'BackgroundColor','red');
               set(handles.bal_8,'BackgroundColor','red');
               set(handles.bal_9,'BackgroundColor','red');
               set(handles.bal_10,'BackgroundColor','red');
               set(handles.bal_11,'BackgroundColor','red');
               set(handles.bal_12,'BackgroundColor','red');
               set(handles.bal_13,'BackgroundColor','red');
               data_1 = str2double(z);
               for i=2:8
                   if data_1(i)== 1
                       set(handles.bal_1,'String','ON');
                       set(handles.bal_1,'BackgroundColor','green'); 
                   elseif data_1(i)== 2
                       set(handles.bal_2,'String','ON');
                       set(handles.bal_2,'BackgroundColor','green');
                   elseif data_1(i)== 3
                       set(handles.bal_3,'String','ON');
                       set(handles.bal_3,'BackgroundColor','green');
                   elseif data_1(i)== 4
                       set(handles.bal_4,'String','ON');
                       set(handles.bal_4,'BackgroundColor','green');
                   elseif data_1(i)== 5
                       set(handles.bal_5,'String','ON');
                       set(handles.bal_5,'BackgroundColor','green');
                   elseif data_1(i)== 6
                       set(handles.bal_6,'String','ON');
                       set(handles.bal_6,'BackgroundColor','green');
                   elseif data_1(i)== 7
                       set(handles.bal_7,'String','ON');
                       set(handles.bal_7,'BackgroundColor','green');
                   elseif data_1(i)== 8
                       set(handles.bal_8,'String','ON');
                       set(handles.bal_8,'BackgroundColor','green');
                   elseif data_1(i)== 9
                       set(handles.bal_9,'String','ON');
                       set(handles.bal_9,'BackgroundColor','green');
                   elseif data_1(i)== 10
                       set(handles.bal_10,'String','ON');
                       set(handles.bal_10,'BackgroundColor','green');
                   elseif data_1(i)== 11
                       set(handles.bal_11,'String','ON');
                       set(handles.bal_11,'BackgroundColor','green');
                   elseif data_1(i)== 12
                       set(handles.bal_12,'String','ON');
                       set(handles.bal_12,'BackgroundColor','green');
                   elseif data_1(i)== 13
                       set(handles.bal_13,'String','ON');
                       set(handles.bal_13,'BackgroundColor','green');
                   end
               end
               guidata(hObject,handles);
               x=3;
               t=0:1:x;
               bar1=t*2;
               axes(handles.axes1);
               for i= 1:length(t)
                   cla
                   B1 = bar1(i);
                   one = bar(B1,2,3);
                   set(one,'facecolor',[red(4*(B1/3)),blue(4*(B1/3)),green(4*(B1/3))])
                   axis([0 3 0 2]);
                   pause(0.001)
               end
        end
    end
    fclose(a);
    delete(a)
    set(handles.figure1, 'pointer', 'arrow')
catch
    fclose(a);
    delete(a)
    set(handles.figure1, 'pointer', 'arrow')
    f = errordlg('Serial data corrupted or not able to read Serial port please reconnect','Serial Error');
end

% --- Executes on selection change in com_port.
function com_port_Callback(hObject, eventdata, handles)
% hObject    handle to com_port (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns com_port contents as cell array
%        contents{get(hObject,'Value')} returns selected item from com_port


% --- Executes during object creation, after setting all properties.
function com_port_CreateFcn(hObject, eventdata, handles)
% hObject    handle to com_port (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in close_port.
function close_port_Callback(hObject, eventdata, handles)
% hObject    handle to close_port (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global imp_flag ;
global a ;
imp_flag=1;
       
guidata(hObject,handles);

    

% --- Executes on selection change in portList.
function portList_Callback(hObject, eventdata, handles)
% hObject    handle to portList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns portList contents as cell array
%        contents{get(hObject,'Value')} returns selected item from portList


% --- Executes during object creation, after setting all properties.
function portList_CreateFcn(hObject, eventdata, handles)
% hObject    handle to portList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function baudRateText_Callback(hObject, eventdata, handles)
% hObject    handle to baudRateText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of baudRateText as text
%        str2double(get(hObject,'String')) returns contents of baudRateText as a double


% --- Executes during object creation, after setting all properties.
function baudRateText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to baudRateText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function charging_stat_Callback(hObject, eventdata, handles)
% hObject    handle to charging_stat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of charging_stat as text
%        str2double(get(hObject,'String')) returns contents of charging_stat as a double


% --- Executes during object creation, after setting all properties.
function charging_stat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to charging_stat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
