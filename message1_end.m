function message1_show % Creates a function that when called, a message box pops up declaring the winner of the game 

global p1_score % Declare all global variables to use in the function
global p2_score
global max_score

if p1_score==max_score % Creates an if statement with the condition that if player 1 wins, meaning that if player 1 scores five times
    message_final = ['Player 1 Wins!']; % Assigns the variable message_final the text inside
else % Else means that if player 1 does not win, meaning that if player 2 wins
    message_final = ['Player 2 Wins!']; % Assigns the variable message_final the text inside
end

b = questdlg(message_final,'Game Over','OK','OK'); % Uses the questdlg command to create a message box that displays message_final and contains an "ok" button to click
    switch b
        case 'OK' % If the "ok" button is clicked, then everything is closed and the command window is cleared
            close all
            clear
            clc
    end
    
end



