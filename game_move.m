function game_move

global pong_ball
global paddle_1
global paddle_2
global paddle1_y1
global paddle1_y2
global paddle2_y1
global paddle2_y2
global ball_position
global ball_speed


function keyboard_controls(figure,event) % Creates a function that has the figure as input
switch event.Key % Allows the use of keyboard keys as controls using the event.Key command
    case 's' % Selects the keyboard button corresponding to the letter s
        paddle1_y1=paddle1_y1-10; % Moves the lower limit of paddle 1 down by a value of 10
        paddle1_y2=paddle1_y2-10; % Moves the upper limit of paddle 1 down by a value of 10
    case 'w' % Selects the keyboard button corresponding to the letter w
        paddle1_y1=paddle1_y1+10; % Moves the lower limit of paddle 1 up by a value of 10
        paddle1_y2=paddle1_y2+10; % Moves the lower limit of paddle 1 up by a value of 10
    case 'downarrow' % Selects the keyboard button corresponding to the down arrow
        paddle2_y1=paddle2_y1-10; % Moves the lower limit of paddle 2 down by a value of 10
        paddle2_y2=paddle2_y2-10; % Moves the lower limit of paddle 2 down by a value of 10
    case 'uparrow' % Selects the keyboard button corresponding to the up arrow
        paddle2_y1=paddle2_y1+10; % Moves the lower limit of paddle 2 up by a value of 10
        paddle2_y2=paddle2_y2+10; % Moves the lower limit of paddle 2 up by a value of 10      
end
end


if ball_position(2)<0 || ball_position(2)>100 % Creates if statement with the condition that the ball touches either of the horizontal walls
    ball_speed(2) = -(1.15*ball_speed(2)); % If condition is met, then the direction of the ball changes to its opposite and the speed augments by a factor of 1.15
end
if ball_position(1)<10 % Creates two if statement to declare the conditional that the ball touches paddle 1
    if ball_position(2)>=paddle1_y1 && ball_position(2)<=paddle1_y2 
    ball_speed(1) = -(1.1*ball_speed(1)); % Changes the speed of the ball by a factor of 1.1 and reverses its direction
    beep_bounce; % Calls function to make sound whenever the ball bounces on the paddle
    end
end
if ball_position(1)>90 % Creates two if statement to declare the conditional that the ball touches paddle 2
    if ball_position(2)>=paddle2_y1 && ball_position(2)<=paddle2_y2
    ball_speed(1) = -(1.1*ball_speed(1)); % Changes the speed of the ball by a factor of 1.1 and reverses its direction
    beep_bounce; % Calls function to make sound whenever the ball bounces on the paddle
    end
end
ball_position = ball_position + ball_speed; % Stores the position of the ball by adding the speed to the position
set(pong_ball,'XData',ball_position(1),'YData',ball_position(2)); % Sets the new x and y values of the paddles and ball when taking movement into consideration
set(paddle_1,'YData',[paddle1_y1,paddle1_y2]);
set(paddle_2,'YData',[paddle2_y1,paddle2_y2]);
pause(0.01);

end

