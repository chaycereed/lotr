# lotr

> Color palettes inspired by J.R.R. Tolkien's Middle-earth

An R package providing beautiful color palettes inspired by the locations and characters of *The Lord of the Rings*. Perfect for data visualization with both base R and ggplot2.

## Installation

```r
# Install from GitHub
devtools::install_github("chaycereed/lotr")

# Load the package
library(lotr)
```

## Available Palettes

### Location Palettes
Smooth gradients from light to dark, perfect for heatmaps and sequential data.

- **shire** - Greens and earth tones of the pastoral Shire
- **mordor** - Reds, blacks, and ashen grays of the volcanic wasteland
- **rivendell** - Blues and teals of Elven waterfalls
- **minasmorgul** - Eerie neon greens of the corrupted city

### Character Palettes
Bold, distinct colors perfect for categorical data and groups.

- **aragorn** - Steel blues and grays of the ranger king
- **samwise** - Warm peachy pinks and rosey red tones of the loyal gardener
- **gollum** - Murky grays and greens of the cave dweller
- **legolas** - Forest greens and yellows of the elven prince 
- **sauron** -  Greedy golds and reds of the dark lord

## Usage

### Basic Usage

```r
# Get all colors from a palette
lotr_palette("shire")

# Get specific number of colors
lotr_palette("mordor", n = 5)

# Reverse the palette
lotr_palette("rivendell", reverse = TRUE)

# See all available palettes
lotr_palette_names()
```

### With Base R

```r
# Simple bar plot
colors <- lotr_palette("aragorn")
barplot(1:7, col = colors, main = "Aragorn Colors")

# Heatmap
image(volcano, col = lotr_palette("mordor", n = 50))
```

### With ggplot2

```r
library(ggplot2)

# Discrete scales (for categorical data)
ggplot(iris, aes(x = Species, fill = Species)) +
  geom_bar() +
  scale_fill_lotr_d("aragorn")

# You can also use the base function with discrete = TRUE
ggplot(iris, aes(x = Species, fill = Species)) +
  geom_bar() +
  scale_fill_lotr("aragorn", discrete = TRUE)

# Continuous scales (for numeric data)
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_lotr_c("mordor")

# Or use the base function (continuous is default)
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_lotr("mordor")

# You can reverse the order of the palette using reverse = TRUE 
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_lotr("mordor", reverse = TRUE)
```

## Palette Previews

### Shire
```r
lotr_palette("shire")
```
<p align="center">
  <img src="man/figures/shire/shire.png" width="800">
  <img src="man/figures/shire/shire-palette.png" width="898">
  <img src="man/figures/shire/shire-continuous.png" width="884">
  <img src="man/figures/shire/shire-density.png" width="800">
  <img src="man/figures/shire/shire-discrete.png" width="800">
</p>

### Mordor
```r
lotr_palette("mordor")
```
<p align="center">
  <img src="man/figures/mordor/mordor.png" width="800">
  <img src="man/figures/mordor/mordor-palette.png" width="898">
  <img src="man/figures/mordor/mordor-continuous.png" width="884">
  <img src="man/figures/mordor/mordor-density.png" width="800">
  <img src="man/figures/mordor/mordor-discrete.png" width="800">
</p>

### Rivendell
```r
lotr_palette("rivendell")
```
<p align="center">
  <img src="man/figures/rivendell/rivendell.png" width="800">
  <img src="man/figures/rivendell/rivendell-palette.png" width="898">
  <img src="man/figures/rivendell/rivendell-continuous.png" width="884">
  <img src="man/figures/rivendell/rivendell-density.png" width="800">
  <img src="man/figures/rivendell/rivendell-discrete.png" width="800">
</p>

### Minas Morgul
```r
lotr_palette("minasmorgul")
```
<p align="center">
  <img src="man/figures/minasmorgul/minasmorgul.png" width="800">
  <img src="man/figures/minasmorgul/minasmorgul-palette.png" width="898">
  <img src="man/figures/minasmorgul/minasmorgul-continuous.png" width="884">
  <img src="man/figures/minasmorgul/minasmorgul-density.png" width="800">
  <img src="man/figures/minasmorgul/minasmorgul-discrete.png" width="800">
</p>

### Aragorn
```r
lotr_palette("aragorn")
```
<p align="center">
  <img src="man/figures/aragorn/aragorn.png" width="800">
  <img src="man/figures/aragorn/aragorn-palette.png" width="898">
  <img src="man/figures/aragorn/aragorn-continuous.png" width="884">
  <img src="man/figures/aragorn/aragorn-density.png" width="800">
  <img src="man/figures/aragorn/aragorn-discrete.png" width="800">
</p>

### Samwise
```r
lotr_palette("samwise")
```
<p align="center">
  <img src="man/figures/samwise/samwise.png" width="800">
  <img src="man/figures/samwise/samwise-palette.png" width="898">
  <img src="man/figures/samwise/samwise-continuous.png" width="884">
  <img src="man/figures/samwise/samwise-density.png" width="800">
  <img src="man/figures/samwise/samwise-discrete.png" width="800">
</p>

### Legolas
```r
lotr_palette("legolas")
```
<p align="center">
  <img src="man/figures/legolas/legolas.png" width="800">
  <img src="man/figures/legolas/legolas-palette.png" width="898">
  <img src="man/figures/legolas/legolas-continuous.png" width="884">
  <img src="man/figures/legolas/legolas-density.png" width="800">
  <img src="man/figures/legolas/legolas-discrete.png" width="800">
</p>

### Gollum
```r
lotr_palette("gollum")
```
<p align="center">
  <img src="man/figures/gollum/gollum.png" width="800">
  <img src="man/figures/gollum/gollum-palette.png" width="898">
  <img src="man/figures/gollum/gollum-continuous.png" width="884">
  <img src="man/figures/gollum/gollum-density.png" width="800">
  <img src="man/figures/gollum/gollum-discrete.png" width="800">
</p>

### Sauron
```r
lotr_palette("sauron")
```
<p align="center">
  <img src="man/figures/sauron/sauron.png" width="800">
  <img src="man/figures/sauron/sauron-palette.png" width="898">
  <img src="man/figures/sauron/sauron-continuous.png" width="884">
  <img src="man/figures/sauron/sauron-density.png" width="800">
  <img src="man/figures/sauron/sauron-discrete.png" width="800">
</p>

## Examples

### Scatter Plot
```r
library(ggplot2)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_lotr_d("aragorn") +
  theme_minimal()
```

### Heatmap
```r
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_lotr_c("minasmorgul") +
  theme_minimal()
```

### Violin Plot
```r
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_violin() +
  scale_fill_lotr_d("sauron") +
  theme_minimal()
```

## Scale Functions

The package provides multiple ways to use palettes:

**Base functions** (flexible):
- `scale_color_lotr(name, discrete = FALSE/TRUE)`
- `scale_fill_lotr(name, discrete = FALSE/TRUE)`

**Explicit discrete** (for categorical data):
- `scale_color_lotr_d(name)`
- `scale_fill_lotr_d(name)`

**Explicit continuous** (for numeric data):
- `scale_color_lotr_c(name)`
- `scale_fill_lotr_c(name)`

All scale functions support the `reverse = TRUE` parameter to flip the palette.

## Disclaimer

This package is an unofficial fan creation inspired by the works of J.R.R. Tolkien. It is not affiliated with or endorsed by Middle-earth Enterprises, the Tolkien Estate, or any official rights holders.

## License

MIT License - see LICENSE file for details

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Acknowledgments

- J.R.R. Tolkien for creating Middle-earth
- The R community for excellent color palette packages that inspired this work
- Color design inspired by Peter Jackson's film adaptations