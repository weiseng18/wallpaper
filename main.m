function [] = main(IMAGE_PATH, HEIGHT, WIDTH)
    % Read image
    I = imread("./images/" + IMAGE_PATH);

    % Generate foreground
    fg = imresize(I, 2);

    % Generate background
    bg = generate_background(HEIGHT, WIDTH, I);

    % Overlay image onto the center of the background
    res = overlay_image(fg, bg);

    % Write image to file
    imwrite(res, 'output.png');
end