function [] = main(IMAGE_PATH, HEIGHT, WIDTH)
    % Constants
    BLUR = 15;
    DELTA = 60;    % crop from top and bottom
    UPSCALE = 2;   % upscale foreground image
    BORDER = 10;   % white border around foreground image

    % Read image
    I = imread("./images/" + IMAGE_PATH);

    % Generate foreground
    fg = imresize(I, UPSCALE);

    % Generate background
    bg = generate_background(HEIGHT, WIDTH, I, BLUR, DELTA);

    % Add white border to foreground
    fg = add_border(fg, BORDER);

    % Overlay image onto the center of the background
    res = overlay_image(fg, bg);

    % Write image to file
    imwrite(res, 'output.png');
end