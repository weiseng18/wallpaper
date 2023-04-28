%{
    Adds a white border to the image with the specified width
%}
function res = add_border(img, border_width)
    % Calculate dimensions of new image
    [height, width, ~] = size(img);
    new_height = height + 2 * border_width;
    new_width = width + 2 * border_width;

    % Initialize new image to white
    res = uint8(zeros(new_height, new_width, 3));
    res(:, :, 1) = 255;
    res(:, :, 2) = 255;
    res(:, :, 3) = 255;

    % Copy original image to new image
    res(border_width + 1:height + border_width, border_width + 1:width + border_width, :) = img;
end