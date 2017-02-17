
clear all



global edit1 edit2 edit3 pass1 pass2 data_encrypt
global irt endrt ert iprt pt


irt = ...                           
       [58 50 42 34 26 18 10 2 ...
        60 52 44 36 28 20 12 4 ...
        62 54 46 38 30 22 14 6 ...
        64 56 48 40 32 24 16 8 ...
        57 49 41 33 25 17  9 1 ...
        59 51 43 35 27 19 11 3 ...
        61 53 45 37 29 21 13 5 ...
        63 55 47 39 31 23 15 7];
endrt = ...                         
       [40 8 48 16 56 24 64 32 ...
        39 7 47 15 55 23 63 31 ...
        38 6 46 14 54 22 62 30 ...
        37 5 45 13 53 21 61 29 ...
        36 4 44 12 52 20 60 28 ...
        35 3 43 11 51 19 59 27 ...
        34 2 42 10 50 18 58 26 ...
        33 1 41  9 49 17 57 25];
ert = ...                           
       [32  1  2  3  4  5  4  5 ...
         6  7  8  9  8  9 10 11 ...
        12 13 12 13 14 15 16 17 ...
        16 17 18 19 20 21 20 21 ...
        22 23 24 25 24 25 26 27 ...
        28 29 28 29 30 31 32 1];
iprt = ...                          
       [57 49 41 33 25 17  9  1 ...
        58 50 42 34 26 18 10  2 ...
        59 51 43 35 27 19 11  3 ...
        60 52 44 36 63 55 47 39 ...
        31 23 15  7 62 54 46 38 ...
        30 22 14  6 61 53 45 37 ...
        29 21 13  5 28 20 12  4];
pt = ...                            
       [16  7 20 21 29 12 28 17 ...
         1 15 23 26  5 18 31 10 ...
         2  8 24 14 32 27  3  9 ...
        19 13 30  6 22 11  4 25];


pict = figure('position',[200 200 600 300],'name','enter the name','NumberTitle','off');


text1 = uicontrol(pict,'style','text',...
        'position',[100 265 410 30],'BackgroundColor',[0.80 0.80 0.80],'string','DES Algorithm','FontSize',18);

%%%%%%%%%%------%%%%%%%%%%
text2 = uicontrol(pict,'style','text',...
        'position',[30 230 150 25],'BackgroundColor',[0.80 0.80 0.80],'string','enter input','FontSize',10);
edit1 = uicontrol(pict,'style','edit',...
        'position',[30 80 160 150],'BackgroundColor',[1 1 1],'string','','Max',2,'FontSize',10);

%%%%%%%%%%--------%%%%%%%%%%
text3 = uicontrol(pict,'style','text',...
        'position',[220 230 150 25],'BackgroundColor',[0.80 0.80 0.80],'string','encrypt data','FontSize',10);
edit2 = uicontrol(pict,'style','edit',...
        'position',[220 80 160 150],'BackgroundColor',[1 1 1],'string','','Max',2,'FontSize',10);

%%%%%%%%%%--------%%%%%%%%%%
text4 = uicontrol(pict,'style','text',...
        'position',[410 230 150 25],'BackgroundColor',[0.80 0.80 0.80],'string','decript data','FontSize',10);
edit3 = uicontrol(pict,'style','edit',...
        'position',[410 80 160 150],'BackgroundColor',[1 1 1],'string','','Max',2,'FontSize',10);

%%%%%%%%%%--------------%%%%%%%%%%
fram1 = uicontrol(gcf,'Style','frame',...
        'position',[70 15 210 50],'BackgroundColor',[0.80 0.80 0.80]);
text5 = uicontrol(pict,'style','text',...
        'position',[140 55 60 20],'BackgroundColor',[0.80 0.80 0.80],'string','encrypt key','FontSize',10);
text7 = uicontrol(pict,'style','text',...
        'position',[75 28 100 20],'BackgroundColor',[0.80 0.80 0.80],'string','key','FontSize',10);
pass1 = uicontrol(pict,'style','edit',...
        'position',[168 30 60 20],'BackgroundColor',[1 1 1],'string','','FontSize',10);
push1 = uicontrol(gcf,'Style','pushbutton',...
        'position',[233 22.5 40 35],'String','ok','FontSize',10,'CallBack','encrypt();');

%%%%%%%%%%------- -------%%%%%%%%%%
fram2 = uicontrol(gcf,'Style','frame',...
        'position',[320 15 210 50],'BackgroundColor',[0.80 0.80 0.80]);
text6 = uicontrol(pict,'style','text',...
        'position',[390 55 60 20],'BackgroundColor',[0.80 0.80 0.80],'string','decrypt key','FontSize',10);
text8 = uicontrol(pict,'style','text',...
        'position',[325 28 100 20],'BackgroundColor',[0.80 0.80 0.80],'string','key','FontSize',10);
pass2 = uicontrol(pict,'style','edit',...
        'position',[418 30 60 20],'BackgroundColor',[1 1 1],'string','','FontSize',10);
push2 = uicontrol(gcf,'Style','pushbutton',...
        'position',[483 22.5 40 35],'String','ok','FontSize',10,'CallBack','decrypt();');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%