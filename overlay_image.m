%{
    Given two images fg and bg.
    fg is guaranteed to be smaller than bg.

    Overlay fg at the center of bg.
%}
function img = overlay_image(fg, bg)
    [bg_height, bg_width, ~] = size(bg);
    [fg_height, fg_width, ~] = size(fg);

    % Overlay fg at the center of bg
    % Do this by replacing the middle part of bg with fg
    img = bg;
    rs = floor(bg_height/2)-floor(fg_height/2)+1;
    re = floor(bg_height/2)+ceil(fg_height/2);
    cs = floor(bg_width/2)-floor(fg_width/2)+1;
    ce = floor(bg_width/2)+ceil(fg_width/2);
    img(rs:re, cs:ce, :) = fg;
end