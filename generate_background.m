%{
    Given an image of size R x C, and target height H, target width W.
    blur is the Gaussian blur sigma.
    delta specifies an amount to crop from the top and bottom of the new image.

    Upscale the image by a factor of H/R.
    Apply blur.
    Crop the center of the image to size H x W.

    Note that H is used for the scaling, and W is used for the cropping.
%}
function img = generate_background(H, W, image, blur, delta)
    R = size(image, 1);
    C = size(image, 2);

    if H > W
        % Increase R to H + delta * 2.
        ratio = (H + delta * 2) / R;
    else
        % Increase C to W.
        ratio = W / C;
    end

    % Upscale the image.
    img = imresize(image, ratio);

    % Apply blur.
    img = imgaussfilt(img, blur);

    % Crop the center of the image to size H x W.
    left = size(img, 2) / 2 - W / 2;
    top = delta + size(img, 1) / 2 - H / 2;
    img = imcrop(img, [left, top, W, H]);
end