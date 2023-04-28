function [] = main(IMAGE_PATH)
    % Read options and parse JSON
    OPT = parse_json('options.json');

    % Read image
    I = imread("./images/" + IMAGE_PATH);

    % Generate foreground
    fg = imresize(I, OPT.upscale);

    % Generate background
    bg = generate_background(OPT.height, OPT.width, I, OPT.blur, OPT.delta);

    % Add white border to foreground
    fg = add_border(fg, OPT.border);

    % Overlay image onto the center of the background
    res = overlay_image(fg, bg);

    % Write image to file
    imwrite(res, 'output.png');
end