---
title: Helix Nebula
date: 2020-09-26 18:00:00 -0700
categories: [Astrophotography]
collection: images
tags: [Narrowband, Nebula, NGC, Bicolor]
image:
  thumb: /assets/img/astrophotography/helix-nebula-bicolor-2020-09-26-teaser.jpg
  path: /assets/img/astrophotography/helix-nebula-bicolor-2020-09-26.jpg
  alt: Helix Nebula
---

The [Helix Nebula](https://en.wikipedia.org/wiki/Helix_Nebula) is my favorite planetary nebula. It is also the closest of the bright planetary nebulas at 655 light years.


I have been trying to image the Helix Nebula for 4 years. Each year presented a new problem which prevent me from completing the project. At my latitude, the nebula only gets to 36 degrees elevation. It is just so low in the sky that guiding is not reliable because of scintillation. My old Celestron CGEM was not able to track reliably, nor was the AP Mach 1. Now that I have a 10Micron GM1000, most of my imaging is unguided. It had no problems tracking Helix through the low elevation. The gear problems and monsoon season coming to a close have prevent me for years! This year with the Western US being on fire was set on making it 5 years but luckily I had enough clear skies to be able to get enough images and I am quite pleased with the result.

Processing follows my standard workflow:

*  Calibrate, subframe selector, alignment, blink, integrate
*  Deconvolution
*  Linear fit
*  Stretch
*  Pixel math
*  Background neutralization
*  TGV denoise in chrominance mode
*  Local histogram equalization
*  Curves

I experimented with different pixel math and came up with the following after trial and error.

```js
R: ha
G: oiii * ha
B: (oiii * (oiii-ha)) + oiii
```

This seemed to accentuate the blue channel which is what I was looking for since the center has a lot of OIII. Background neutralization and curves was required to get the color balance correct, but that is pretty normal.

### Gear

|:-------+:-------:|
| Telescope | Orion Optics UK ODK12 |
| Mount | 10Micron GM1000HPS |
| Imaging Camera | QHY163M |
| Guide Camera | QHY5III178 |
| Filter Wheel | QHYCFW2 |
| Filters | Baader HA and OIII 36mm unmounted |
| Focuser | FT3015B-A |

### Shot Details

|:-------+:-------:|
| Automation Software | TBA |
| Image Processing | PixInsight |
| Guiding | None |
| HA | 129 x 300sec at -10&deg;C |
| OIII | 153 x 300sec at -10&deg;C |
| Total Integration | 23.5 hours|
| Gain | 120 |
| Offset | 70 |
| Ambient | 30-35&deg;C :sob: |
| Bortle | 6/7 |
| Location | Phoenix, AZ |
