# Embed OpenStreetMap in your website

Although there are some examples out there of how to integrate OpenStreetMap in your website, I wasn't quite happy with the style and functionality these maps have.

So I created one, composed of different open source projects, that I think can compete with the polished styles that proprietary maps offer.

## Demo

![](https://xjcb.de/projects/embed-openstreetmap/screenshot.png)

[See the map in action](https://xjcb.de/projects/embed-openstreetmap/)

## Installation

1. Download this repository

2. In the file `index.html` is a section where it says *CONFIGURATION*.<br/>Go there and change the parameters to your liking. Also paste your [MapTiler API key](https://cloud.maptiler.com/account/keys/) here.

3. Your Browser won't show the map when you open `index.html` as a local file because of its CORS policy.<br/>Therefore upload all files to your server (f.ex. at `https://example.com/map/`).

4. Integrate the map into your website with an iframe

```html
<iframe src="https://example.com/map/" style="border:none; width:800px; height:500px"></iframe>
```

## Features

- Users can switch between Map view and Satellite view

- Shows 3D buildings in Map view if you zoom in close

- All the controls that you'd expect from an embedded map

- Customizable pop-up

- Supports cooperative gestures to prevent inadvertent scrolling/panning

- English and german locale for the map and for the controls

- [MapTiler](https://www.maptiler.com/) is used as tile server (free for non-commercial use).<br/>But self-hosted tile servers should work as well.

## Details

[MapLibre GL JS](https://maplibre.org/projects/maplibre-gl-js/) is the engine that renders the map in the website and handels user input. But in order for the library to paint that beautiful map on the canvas, it needs a stylesheet and a tile server.

The french search engine Qwant launched their mapping service [Qwant Maps](https://www.qwant.com/maps/) with a map style that I like a lot. Luckily they made that map style [open source](https://github.com/Qwant/qwant-basic-gl-style) so that it is now used in the **Map view**.<br/>I added 3D buildings from [OpenMapTiles](https://openmaptiles.org/)'s [3D style](https://github.com/openmaptiles/maptiler-3d-gl-style) as described in [this example](https://maplibre.org/maplibre-gl-js-docs/example/3d-buildings/) and I set [MapTiler](https://www.maptiler.com/) as tile server.

When the user switches to **Satellite view** MapTilers [hybrid style](https://www.maptiler.com/maps/#hybrid) is loaded. That style is not open source, but available within their free plan. Here too MapTiler is set as tile server.

MapTilers terms require that their logo and a text attribution are displayed on the map.<br/>But when you replace the hybrid style and use [self-hosted tiles](https://openmaptiles.org/docs/) for qwant style, you can remove icon and attribution.

And last but not least there are all the [OpenStreetMap](https://www.openstreetmap.org/about/) contributors that volunteer to map the world and make this whole project possible.
