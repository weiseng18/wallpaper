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
    "height": 2778,
    "width": 1284
}
```

<img src="images/kiseki_wallpaper.png" width="200px"/>