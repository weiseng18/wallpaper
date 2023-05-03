# wallpaper

Given a square image, this script creates a wallpaper with
- an upscaled, blurred version of the image in the background, and
- an upscaled version of the image in the foreground.

## Usage

`./run <path-to-image>`

- Writes to `output.png` in the current directory.
- Reads `config.json` in the current directory for config. See below for the format of this file.

## Example

<table>
    <tr>
        <th>Input</th>
        <th>Output</th>
        <th>Config</th>
    </tr>
    <tr>
        <td align="center"><img src="images/kiseki.png" width="200px"/></td>
        <td align="center"><img src="images/kiseki_wallpaper.png" width="200px"/></td>
        <td><pre>
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
}</pre></td>
    </tr>
    <tr>
        <td align="center"><img src="images/kyu-kurarin.jpeg" width="200px"/></td>
        <td align="center"><img src="images/kyu-kurarin_wallpaper_portrait.png" width="200px"/></td>
        <td><pre>
{
    "bg": {
        "blur": 25,
        "delta": 0
    },
    "fg": {
        "upscale": 2,
        "border": 10
    },
    "rotate": 90,
    "height": 2778,
    "width": 1284
}</pre></td>
    </tr>
    <tr>
        <td align="center"><img src="images/kyu-kurarin.jpeg" width="200px"/></td>
        <td align="center"><img src="images/kyu-kurarin_wallpaper_landscape.png" width="400px"/></td>
        <td><pre>
{
    "bg": {
        "blur": 25,
        "delta": 0
    },
    "fg": {
        "upscale": 2,
        "border": 10
    },
    "rotate": 90,
    "height": 1080,
    "width": 1920
}</pre></td>
    </tr>
</table>

## Config file

The config file is a JSON file with the following structure:

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
