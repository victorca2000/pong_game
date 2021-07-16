function beep_goal % Creates a function to make a sound for each time a player scores

amp=10; % Sets up constants to be used in the equation for variable beep2
fs=700;
duration=0.4; % This is how long the sound will last
freq=100;
values=0:1/fs:duration; % Uses the colon operator to get the variable values for the beep2 equation
beep2=amp*sin(2*pi*freq*values);

for i=1:5 % Creates a for loop that will run five times to make five successive beeps
    sound(beep2);
    pause(0.15) % This allows the sound to be a beeping instead of a continuous sound
end

end

