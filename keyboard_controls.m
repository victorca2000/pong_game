function keyboard_controls(figure,event)
global paddle1_y1
global paddle1_y2
global paddle2_y1
global paddle2_y2
switch event.Key
    case 's'
        paddle1_y1=paddle1_y1-3;
        paddle1_y2=paddle1_y2-3;
    case 'w'
        paddle1_y1=paddle1_y1+3;
        paddle1_y2=paddle1_y2+3;
    case 'downarrow'
        paddle2_y1=paddle2_y1-3;
        paddle2_y2=paddle2_y2-3;
    case 'uparrow'
        paddle2_y1=paddle2_y1+3;
        paddle2_y2=paddle2_y2+3;       
end
end