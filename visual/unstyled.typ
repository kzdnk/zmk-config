
#let key(layer: [], mod: [], content) = {
  square[
    #place(left + top)[#layer <layer>]
    #place(center + horizon)[#content <keycode>]
    #place(right + bottom)[#mod <mod>]
  ]
}

#let long(content) = {
  square(align(center + horizon, content))
}

#let empty = key[#sym.nothing]
#let test = key(layer: [T], mod: [T], [T])

#let pressed = [#square[] <pressed>]

#let l_sym = key.with(layer: [sym])
#let l_num = key.with(layer: [num])
#let l_fun = key.with(layer: [fun])
#let l_nav = key.with(layer: [nav])

#let lalt = key.with(mod: [lalt])
#let ralt = key.with(mod: [ralt])
#let ctrl = key.with(mod: [ctrl])
#let meta = key.with(mod: [meta])
#let shft = key.with(mod: [shift])

#set grid(
  columns: 10,
  inset: 2pt,
  column-gutter: (0pt, 0pt, 0pt, 0pt, 10pt, 0pt)
)

= default
#grid(
  key[Q],  key[W],  key[F],   key[P],     key[B],    key[J],     key[L],     key[U],  key[Y],  key['],
  meta[A], lalt[R], ctrl[S],  shft[T],    key[G],    key[M],     shft[N],    ctrl[E], lalt[I], meta[O],
  key[Z],  key[X],  key[C],   key[D],     key[V],    key[K],     key[H],     key[,],  key[.],  ralt[/],
  none,    none,    key[ESC], l_nav[SPC], key[TAB],  l_sym[RET], l_num[BSP], l_fun[DEL],
)

= symbols
#grid(
  key[\`], key[<],   key[>],  key[-],  key[|],  key[^],    key[{],  key[}],  key[\$], key['],
  meta[!], lalt[\*], ctrl[/], shft[=], key[&],  key[\_],   shft[(], ctrl[)], lalt[;], meta[?],
  key[\~], key[+],   key[\[], key[\]], key[%],  key[\\],   key[:],  key[,],  key[.],  key[@],
  none,    none,     empty,   empty,   empty,   pressed, empty,   empty,
)

= navigation
#grid(
  long[boot loader], empty, empty, empty,     long[print screen], long[redo],   long[paste], long[copy],      long[cut],     long[undo],
  empty,             empty, empty, empty,     empty,           long[left],   long[down],  long[up],        long[right],   long[caps word],
  empty,             empty, empty, empty,     empty,           long[insert], long[home],  long[page down], long[page up], long[end],
  none,              none,  empty, pressed, empty,           empty,        empty,       empty,
)

= numbers
#grid(
 key[\[], key[7], key[8], key[9], key[\]], empty, empty,   empty,  empty,  empty,
 key[;],  key[4], key[5], key[6], key[=],  empty, shft[],  ctrl[], lalt[], meta[],
 key[\~], key[1], key[2], key[3], key[/],  empty, empty,   empty,  empty,  empty,
 none,    none,   key[.], key[0], key[-],  empty, pressed, empty,
)

= function
#grid(
 key[F12], key[F7], key[F8], key[F9], key[\]], empty, empty,  empty,  empty,  empty,
 key[F11], key[F4], key[F5], key[F6], key[=],  empty, shft[], ctrl[], lalt[], meta[],
 key[F10], key[F1], key[F2], key[F3], key[/],  empty, empty,  empty,  empty,  empty,
 none,     none,    empty,   empty,   empty,   empty, empty,  pressed,
)
