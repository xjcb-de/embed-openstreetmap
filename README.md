# Embed OpenStreetMap in your website

Although there are some examples out there of how to integrate OpenStreetMap in your website, I wasn't quite happy with the style the maps had.

So I created one, composed of different open source projects, that I think can compete with the polished styles that proprietary maps offer.

## Demo

![](https://xjcb.de/projects/embed-openstreetmap/screenshot1.png)

[See the map in action]([Landkarte](https://xjcb.de/projects/embed-openstreetmap/)

## Installation

1. Download this repository

2. In the file `index.html` is a section where it says *CONFIGURATION*.
   Go there and change the parameters to your liking. Also paste your API key here.

3. Your Browser won't show the map when you open `index.html` as a local file because of its CORS policy.
   Therefore upload all files to your server (f.ex. at `https://example.com/map/`).

4. Integrate the map into your website with an iframe

```html
<iframe src="https://example.com/map/"
        style="border:none; width:800px; height:500px" />
```

## Features

- Shows buildings in 3D if you zoom in close

- Users can switch between Map view and Satellite view

- Standard controls that you'd expect from an embedded map

- Customizable pop-up

- Supports cooperative gestures to prevent inadvertent scrolling/panning

- English and german locale for the map and for the controls

- [MapTiler](https://www.maptiler.com/) is used as tile server (free for non-commercial use).
  But other tile servers should work as well, even self-hosted ones.
