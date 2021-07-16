function beep_bounce % Creates equation that makes a soundn whenever the ball bounces on either paddle

amp=10; % Declares constants to be used in the beep1 equation
fs=2000;  
duration=0.75; % The sound will last less than a second 
freq=100;
values=0:1/fs:duration;
beep1=amp*sin(2*pi*freq*values); % Calculates beep1 to then use the sound command to make a sound out of the values
sound(beep1);

end

