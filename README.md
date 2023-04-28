# wallpaper

Given a square image, this script creates a wallpaper with
- an upscaled, blurred version of the image in the background, and
- an upscaled version of the image in the foreground.

Currently it assumes that height > width.

## Example

**Input:**

<img src="images/kiseki.png" width="200px"/>

**Output:**

Ran with `./run images/kiseki.png` and the following config:

```json
{
    "bg": {
        "blur": 15,
        "delta": 60
    },
    "fg": {
        "upscale": 2,
        "border": 0
    },
    "rotate": 0,
    "height": 2778,
    "width": 1284
}
```

<img src="images/kiseki_wallpaper.png" width="200px"/>

## Options file

The options file is a JSON file with the following structure:

```json
{
    "bg": {
        "blur": 15,
        "delta": 60
    },
    "fg": {
        "upscale": 2,
        "border": 0
    },
    "rotate": 0,
    "height": 2778,
    "width": 1284
}
```

- `bg`:
    - `blur`: Gaussian blur sigma for the background image.
    - `delta`: Crop the background image by this amount (in pixels) on the top and bottom.
- `fg`:
    - `upscale`: Upscale the foreground image by this factor.
    - `border`: Add a white border to the foreground image of this width.
- `rotate`: The amount to rotate the original image by (counter-clockwise, in degrees)
- `height`: The height of the output image.
- `width`: The width of the output image.