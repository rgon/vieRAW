# vieRAW
RAW Video player for cinema cameras.

## Goal
This project attempts to create a universal video player for cinema cameras that plays realtime 4K RAW videos. Ideally applying LUTs realtime on OpenCL-capable GPUS (must support Intel/AMD integrated graphics), since existing (closed-source) solutions all require a CUDA-capable GPU.

Why? I don't want to carry a laptop with a dedicated GPU around, yet want to preview the imported videos from my shiny new camera using Free Software, way before I go into my editing station.

## Future
Extend the software to work as a web-based ingest station and library catalog. Just dump your camera cards into the server where they'll be copied automatically and access them from anywhere with full-fps previews. Choose the LUTs from a dropdown and play back a realtime (compressed) version right on your browser. Also, share them with other users (the raw file or the whole drive with a local 1/10GBE connection). Or share a download link for collaboration. Nextcloud plugin anyone? :)

This is a true problem when trying to use Nextcloud or similar software to organize your camera library since, normally, the files coming out of your camera have a much higher bitrate than your network connection can handle. Live transcoding should solve this issue gracefully. However, software like Plex is overkill and doesn't fit into a workflow like this.

Gstreamer should make this idea pretty doable.

Also convert this into a BM Ultrascope-like software? Search for FOSS related projects.

## Development stage
Conceptual. Viability checks. 
Pipeline:
```text
[ CinemaDNG/other ](storage) -> [ libraw ](CPU) -> [ lut ](GPU) -> [ playback window ](?choose)
```

## Notes:
+ [ Blackmagic Cinema Camera libraw + Aperture + Motion workflow - Karoliina Salminen](http://karoliinasalminenphotography.blogspot.com/2013/12/blackmagic-cinema-camera-libraw.html)

## Many thanks to
`gstreamer` and `libraw`, which make this project possible.