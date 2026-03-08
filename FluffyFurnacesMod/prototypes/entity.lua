local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
data:extend
({
  {
    type = "furnace",
    name = "big-stone-furnace",
    icon = "__base__/graphics/icons/stone-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.4, result = "big-stone-furnace"},
    fast_replaceable_group = "furnace",
    --next_upgrade = "big-steel-furnace",
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["stone-furnace"],
    max_health = 400,
    corpse = "stone-furnace-remnants",
    dying_explosion = "stone-furnace-explosion",
    repair_sound = sounds.manual_repair,
    mined_sound = sounds.deconstruct_bricks(0.8),
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    allowed_effects = {"speed", "consumption", "pollution"},
    effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "stone",
    icon_draw_specification = {scale = 0.66, shift = {0, -0.1}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/furnace.ogg",
        volume = 0.6,
        modifiers = {volume_multiplier("main-menu", 1.5), volume_multiplier("tips-and-tricks", 1.4)},
        audible_distance_modifier = 0.4
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-6.8, -6.8}, {6.8, 6.8}},
    selection_box = {{-6.9, -6.9}, {6.9, 6.9}},
    --damaged_trigger_effect = hit_effects.rock(),
    crafting_categories = {"smelting"},
    result_inventory_size = 5,
    energy_usage = "4320kW",
    crafting_speed = 48,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      fuel_inventory_size = 5,
      emissions_per_minute = { pollution = 120 },
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            shift = util.by_pixel(-0.25, 6),
            scale = 4.4
          },
          {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 4.4
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            layers =
            {
              {
                filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
                priority = "extra-high",
                line_length = 8,
                width = 41,
                height = 100,
                frame_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(-0.75, 5.5),
                scale = 4.4
              },
              {
                filename = "__base__/graphics/entity/stone-furnace/stone-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(0, 5),
                scale = 4.4,
              },
            }
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace-ground-light.png",
            blend_mode = "additive",
            width = 116,
            height = 110,
            repeat_count = 48,
            draw_as_light = true,
            shift = util.by_pixel(-1, 44),
            scale = 4.4,
          },
        },
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-reflection.png",
          priority = "extra-high",
          width = 16,
          height = 16,
          shift = util.by_pixel(0, 35),
          variation_count = 1,
          scale = 33,3
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  },
  --Большая каменная печь

  {
    type = "furnace",
    name = "big-steel-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.4, result = "big-steel-furnace"},
    fast_replaceable_group = "furnace",
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["steel-furnace"],
    max_health = 600,
    corpse = "steel-furnace-remnants",
    dying_explosion = "steel-furnace-explosion",
    impact_category = "metal",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    allowed_effects = {"speed", "consumption", "pollution"},
    effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
    icon_draw_specification = {scale = 0.66, shift = {0, -0.1}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steel-furnace.ogg",
        volume = 0.32,
        advanced_volume_control = {attenuation = "exponential"},
        audible_distance_modifier = 0.5,
      },
      max_sounds_per_prototype = 4,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-6.8, -6.8}, {6.8, 6.8}},
    selection_box = {{-6.9, -6.9}, {6.9, 6.9}},
    --damaged_trigger_effect = hit_effects.entity(),
    crafting_categories = {"smelting"},
    result_inventory_size = 5,
    energy_usage = "4320kW",
    crafting_speed = 96,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      emissions_per_minute = { pollution = 240 },
      fuel_inventory_size = 5,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          frequency = 10,
          position = {0.7, -1.2},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
            priority = "high",
            width = 171,
            height = 174,
            shift = util.by_pixel(-1.25, 2),
            scale = 4.4
          },
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
            priority = "high",
            width = 277,
            height = 85,
            draw_as_shadow = true,
            shift = util.by_pixel(39.25, 11.25),
            scale = 4.4
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
            priority = "high",
            line_length = 8,
            width = 57,
            height = 81,
            frame_count = 48,
            draw_as_glow = true,
            shift = util.by_pixel(-0.75, 5.75),
            scale = 4.4
          },
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
            priority = "high",
            width = 60,
            height = 43,
            draw_as_glow = true,
            shift = {0.03125, 0.640625},
            blend_mode = "additive"
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
            priority = "high",
            line_length = 1,
            width = 128,
            height = 150,
            draw_as_glow = true,
            shift = util.by_pixel(0, -5),
            blend_mode = "additive",
            scale = 4.4,
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-ground-light.png",
            priority = "high",
            line_length = 1,
            width = 152,
            height = 126,
            draw_as_light = true,
            shift = util.by_pixel(1, 48),
            blend_mode = "additive",
            scale = 4.4,
          },
        },
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
          priority = "extra-high",
          width = 20,
          height = 24,
          shift = util.by_pixel(0, 45),
          variation_count = 1,
          scale = 33,3
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  },
  --Большая стальная печь

  {
    type = "furnace",
    name = "big-electric-furnace",
    icon = "__base__/graphics/icons/electric-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.4, result = "big-electric-furnace"},
    fast_replaceable_group = "furnace",
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["electric-furnace"],
    max_health = 700,
    corpse = "electric-furnace-remnants",
    dying_explosion = "electric-furnace-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-10.2, -10.2}, {10.2, 10.2}},
    selection_box = {{-10.35, -10.35}, {10.35, 10.35}},
    damaged_trigger_effect = hit_effects.entity(),
    module_slots = 2,
    icon_draw_specification = {shift = {0, -0.1}},
    icons_positioning =
    {
      {inventory_index = defines.inventory.furnace_modules, shift = {0, 0.8}}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    crafting_categories = {"smelting"},
    result_inventory_size = 5,
    crafting_speed = 96,
    energy_usage = "10800kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 120 }
    },
    impact_category = "metal",
    open_sound = sounds.electric_large_open,
    close_sound = sounds.electric_large_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.85,
        modifiers = volume_multiplier("main-menu", 4.2),
        advanced_volume_control = {attenuation = "exponential"},
        audible_distance_modifier = 0.7,
      },
      max_sounds_per_prototype = 4,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace.png",
            priority = "high",
            width = 239,
            height = 219,
            shift = util.by_pixel(0.75, 5.75),
            scale = 4,4
          },
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            priority = "high",
            width = 227,
            height = 171,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 4,4
          }
        }
      },
      working_visualisations =
      {
        {
          fadeout = true,
          animation =
          {
            layers =
            {
              {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
                priority = "high",
                width = 60,
                height = 56,
                frame_count = 12,
                animation_speed = 0.5,
                draw_as_glow = true,
                shift = util.by_pixel(1.75, 32.75),
                scale = 4,4
              },
              {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
                blend_mode = "additive",
                width = 202,
                height = 202,
                repeat_count = 12,
                draw_as_glow = true,
                shift = util.by_pixel(1, 0),
                scale = 4,4,
              },
            }
          },
        },
        {
          fadeout = true,
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
            blend_mode = "additive",
            width = 166,
            height = 124,
            draw_as_light = true,
            shift = util.by_pixel(3, 69),
            scale = 4,4,
          },
        },
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 4,4
          }
        },
        {
          animation =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            scale = 4,4
          }
        }
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
          priority = "extra-high",
          width = 24,
          height = 24,
          shift = util.by_pixel(5, 40),
          variation_count = 1,
          scale = 33,3
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  },
  --Большая электрическая печь

})