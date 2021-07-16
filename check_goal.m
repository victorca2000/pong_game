function check_goal % Creates a function that changes variables and makes sound when a user scores

global p1_score % Declare all global variables to use in the function
global p2_score
global ball_position
global ball_speed
global paddle1_y1
global paddle1_y2
global paddle2_y1
global paddle2_y2

if ball_position(1)>99 % Creates an if statement with the conditional that player 1 scored, meaning that the ball touches the right vertical wall of the figure
    beep_goal; % Calls a function to make a beeping sound when a user scores
    p1_score = p1_score+1; % Adds a value of 1 to the variable of p1_score to keep track of the score of player 1
    clc
    disp('Player 1:') % Displays the scores of both players in the command window
    disp(p1_score)
    disp('Player 2:')
    disp(p2_score)
    ball_position=randi([40 60],1,2); % Changes the position of the ball to start again somewhere random in the middle between the values of 40 and 60 in both x and y directions
    paddle1_y1=43; % Sets the paddles back to their starting positions
    paddle1_y2=57;
    paddle2_y1=43;
    paddle2_y2=57;
    ball_speed=[0.2, -0.25]; % Assigns new value of speed to the ball after player 1 scores
    pause(2)
end
if ball_position(1)<1 % Creates an if statement with the conditional that player 2 scored, meaning that the ball touches the left vertical wall of the figure
    beep_goal; % Calls a function to make a beeping sound when a user scores
    p2_score=p2_score+1; % Serves as a counter, as it adds a value of 1 whenever player 2 scores
    clc
    disp('Player 1:') % Displays the scores of both players in the command window
    disp(p1_score)
    disp('Player 2:')
    disp(p2_score)
    ball_position=randi([40 60],1,2); % Changes the position of the ball to start again somewhere random in the middle between the values of 40 and 60 in both x and y directions
    paddle1_y1=43; % Sets the paddles back to their starting positions
    paddle1_y2=57;
    paddle2_y1=43;
    paddle2_y2=57;
    ball_speed=[-0.2, -0.25]; % Assigns new value of speed to the ball after player 2 scores
    pause(2)
end
end

    