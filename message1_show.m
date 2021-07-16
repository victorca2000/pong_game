function message1_show % Creates a function that when called, a dialogue box with the instructions and welcoming message appears
global max_score % Declare all global variables to use in the function
global program_on

message_intro = ['Welcome to The Greatest Pong Game' 10 10 'First to score ' num2str(max_score) ' points wins!' 10 10 'Player 1:                      Player 2:' 10 ' use (w) and (s)     use arrow keys' 10 10];
a = questdlg(message_intro,'Instructions','OK','OK'); % Uses the questdlg command to create a message box with the title "Instructions", the instructions, and an "ok" button to proceed
switch a
    case 'OK' % When the "ok" button is clicked, the variable program_on becomes equal to 1, allowing the while loop in the main script to start running
      program_on=1;
    otherwise % Does not start the game until the "ok" button is clicked
      program_on = 0;
end
end

