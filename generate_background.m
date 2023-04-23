%{
    Given an image of size R x C, and target height H, target width W.

    Upscale the image by a factor of H/R.
    Apply blur.
    Crop the center of the image to size H x W.

    Note that H is used for the scaling, and W is used for the cropping.
%}
function img = generate_background(H, W, image)
    R = size(image, 1);
    C = size(image, 2);

    % Upscale the image by a factor of H/R.
    ratio = H / R;
    img = imresize(image, ratio);

    % Apply blur.
    img = imgaussfilt(img, 15);

    % Crop the center of the image to size H x W.
    left = size(img, 2) / 2 - W / 2;
    img = imcrop(img, [left, 0, W, H]);
end