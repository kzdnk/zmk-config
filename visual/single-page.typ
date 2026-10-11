#let colors = (
    primary: rgb("#ffb4ac"),
    on-primary: rgb("#5f1412"),
    secondary: rgb("#e7bdb8"),
    on-secondary: rgb("#442927"),
    tertiary: rgb("#e0c38c"),
    on-tertiary: rgb("#3f2d04"),
    error: rgb("#ffb4ab"),
    on-error: rgb("#690005"),
    surface: rgb("#131313"),
    on-surface: rgb("#e2e2e2"),
    surface-variant: rgb("#1f1f1f"),
    on-surface-variant: rgb("#c6c6c6"),
    outline: rgb("#474747"),
    shadow: rgb("#000000"),
    hover: rgb("#e0c38c"),
    on-hover: rgb("#3f2d04"),
    terminal: (
      normal: (
        black: rgb("#474747"),
        red: rgb("#ffb4ab"),
        green: rgb("#ffb4ac"),
        yellow: rgb("#e7bdb8"),
        blue: rgb("#e0c38c"),
        magenta: rgb("#ffb4ac"),
        cyan: rgb("#e7bdb8"),
        white: rgb("#e2e2e2")
      ),
      bright: (
        black: rgb("#919191"),
        red: rgb("#ffb4ab"),
        green: rgb("#ffb4ac"),
        yellow: rgb("#e7bdb8"),
        blue: rgb("#e0c38c"),
        magenta: rgb("#ffb4ac"),
        cyan: rgb("#e7bdb8"),
        white: rgb("#e2e2e2")
      ),
      foreground: rgb("#e2e2e2"),
      background: rgb("#131313"),
      cursor: rgb("#e2e2e2"),
      cursor-text: rgb("#131313"),
      selection-fg: rgb("#c6c6c6"),
      selection-bg: rgb("#474747")
    )
  )


#set page(fill: colors.surface, columns: 2, paper: "a3", flipped: true, margin: 70pt)
#set text(
  font: "Atkinson Hyperlegible Mono",
  fill: colors.primary,
)
#set square(stroke: 1pt + colors.outline, fill: colors.surface-variant, radius: 5pt, width: 100%)
#show heading: set text(fill: colors.tertiary)

#show <keycode>: set text(size: 1.4em, weight: "medium")
#show selector(<layer>).or(<mod>): it => [
  #set text(size: 0.8em, fill: colors.tertiary)
  #emph(it)
]

#show <pressed>: set square(stroke: colors.tertiary)

#include "unstyled.typ"
