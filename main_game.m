global ball_position % Declare all variables as global to use them in function scripts
ball_position=[40,60]; % Sets the initial position of the ball in the figure
global ball_speed
ball_speed=[0.2, 0.25]; % Sets the speed of the ball, having its y component be faster than its x component
global paddle1_speed
paddle1_speed=1.0;
global paddle2_speed
paddle2_speed=1.0;
global paddle1_y1
paddle1_y1=43; % Sets upper and lower limits of both paddles 
global paddle1_y2
paddle1_y2=57;
global paddle2_y1
paddle2_y1=43;
global paddle2_y2
paddle2_y2=57;
global pong_ball
global max_score % Declares variables that are used to keep track of the score
max_score=5;
global p1_score
p1_score=0;
global p2_score
p2_score=0;
global program_on 
program_on=0; % Creates a variable that dictates whether the while loop runs or not, for if it only runs if it has a value of 1

pong_arena = figure('color', [0.5 0.75 0.75],'KeyPressFcn',@keyboard_controls); % Creates a figure with a background color and declares the keyboard_controls function that can be used to alter the figure
wall_axes = axes('color','white','XLim',[0,100],'YLim',[0,100]);
hold on % Plots on the same figure and axes
xline(50,'--k'); % Plots a vertical line that runs through the center of the figure for design purposes
x_circle=50; % Draws circle with its origin at the center of the figure and with a radius of 15
y_circle=50;
r=15;
theta=0:pi/100:2*pi;
a = r*cos(theta) + x_circle; % Calculates the values on the circle to plot them using the plot command
b = r*sin(theta) + y_circle;
plot(a,b,'--k'); % Plots the circle in the middle for the design of the arena

global pong_ball
pong_ball = line(ball_position(1),ball_position(2), 'marker','.','markersize',30,'color','k'); % Plots the circle using the line command by choosing a dot maker and setting a markersize
global paddle_1
paddle_1 = line([10 10],[paddle1_y1,paddle1_y2],'linewidth', 7, 'color', 'b'); % Plots paddle 1 using the line command and sets its initial position and blue color
global paddle_2
paddle_2 = line([90 90],[paddle2_y1,paddle2_y2],'linewidth', 7, 'color', 'r'); % Plots paddle 2 using the line command and sets its initial position and red color

message1_show % Before the while loop runs and the game starts, the message1_show function is called to display the instructions

disp('Player 1:') % Displays the scores in the command window
disp(p1_score)
disp('Player 2:')
disp(p2_score)

while program_on==1 % Creates a while loop that runs starts running when the variable program_on becomes 1 and ends when the variable becomes 0 again
    game_move; % Calls function to create the movement of the game
    check_goal; % Calls function to determine if a user scores
    end_game; % Calls a function that detects when a user wins by scoring five times
end

message1_end % After the while loop ends, the final message appears congratulating the player who wins

