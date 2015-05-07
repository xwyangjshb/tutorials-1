
define [
  "./colorbrewer",
], (colorbrewer) ->

  all_palettes = {}

  for name, items of colorbrewer
    for num, pal of items
      all_palettes["#{ name }-#{ num }"] = pal.reverse() # TODO should be reversed?

  return {
    "all_palettes": all_palettes
  }