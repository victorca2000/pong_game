function beep_win % Creates a function with the name beep_win to make a sound whenever there is a winner

amp=10; % Declares known variables that are not going to change throughout the loop
fs=1700;  
duration=4;
freq=100;

for jj=1:3 % Sets up a for loop that runs three times to produce a sound consisting of three successive beeps
    fs=fs+jj*200; % Increases the value of the variable fs by 200 to produce beeps with ascending frequencies 
    values=0:1/fs:duration;
    beep3=amp*sin(2*pi*freq*values); % Calculates the variable beep3 to make the sound
    sound(beep3);
    pause(1) % There is a pause in between beeps
end

end
