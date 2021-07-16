function end_game % Creates a function that creates a sound and stops the game when there is a winner

global p1_score % Declare all global variables to use in the function
global p2_score
global program_on
global max_score

if p1_score==max_score % Creates an if statement with the condition that player 1 scores five times
    program_on=0; % Sets to zero so that the while loop in the main script stops running
    disp('Player 1 wins!') % Displays in the command window a congratulatory message to the winner
    beep_win; % Calls function beep_win to make a sound when there is a winner
end
if p2_score==max_score % Creates an if statement with the condition that player 2 scores five times
    program_on=0; % Sets to zero so that the while loop in the main script stops running
    disp('Player 2 Wins!') % Displays in the command window a congratulatory message to the winner
    beep_win; % Calls function beep_win to make a sound when there is a winner
end

end


