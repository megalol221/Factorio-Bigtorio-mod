local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

local robot_animations = {}
robot_animations.logistic_robot =
{
  idle =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 84,
    scale = 0.5
  },
  idle_with_cargo =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    scale = 0.5
  },
  in_motion =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 252,
    scale = 0.5
  },
  in_motion_with_cargo =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 80,
    height = 84,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 168,
    scale = 0.5
  },
  shadow_idle =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 57,
    scale = 0.5,
    draw_as_shadow = true
  },
  shadow_idle_with_cargo =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    scale = 0.5,
    draw_as_shadow = true
  },
  shadow_in_motion =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 57*3,
    scale = 0.5,
    draw_as_shadow = true
  },
  shadow_in_motion_with_cargo =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 115,
    height = 57,
    shift = util.by_pixel(31.75, 19.75),
    direction_count = 16,
    y = 114,
    scale = 0.5,
    draw_as_shadow = true
  }
}



data:extend
({
  {  --Большая каменная печь
    type = "furnace",
    name = "big-stone-furnace",
    icon = "__base__/graphics/icons/stone-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.4, result = "big-stone-furnace"},
    fast_replaceable_group = "furnace",
    next_upgrade = "big-steel-furnace",
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
    damaged_trigger_effect = hit_effects.rock(),
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
            scale = 3.5
          },
          {
            filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 3.5
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
                scale = 3.5
              },
              {
                filename = "__base__/graphics/entity/stone-furnace/stone-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                draw_as_glow = true,
                shift = util.by_pixel(0, 5),
                scale = 3.5,
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
            scale = 3.5,
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
          scale = 35
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  },

  {  --Большая стальная печь
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
    damaged_trigger_effect = hit_effects.entity(),
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
            scale = 3.5
          },
          {
            filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
            priority = "high",
            width = 277,
            height = 85,
            draw_as_shadow = true,
            shift = util.by_pixel(39.25, 11.25),
            scale = 3.5
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
            scale = 3.5
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
            scale = 3.5,
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
            scale = 3.5,
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
          scale = 35
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  },

  {  --Большая электрическая печь
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
            scale = 3.5
          },
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            priority = "high",
            width = 227,
            height = 171,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 3.5
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
                scale = 3.5
              },
              {
                filename = "__base__/graphics/entity/electric-furnace/electric-furnace-light.png",
                blend_mode = "additive",
                width = 202,
                height = 202,
                repeat_count = 12,
                draw_as_glow = true,
                shift = util.by_pixel(1, 0),
                scale = 3.5,
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
            scale = 3.5,
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
            scale = 3.5
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
            scale = 3.5
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
          scale = 35
        },
        rotate = false,
        orientation_to_variation = false
      }
    }
  },

  {  --Большой сборочный автомат 1
    type = "assembling-machine",
    name = "big-assembling-machine-1",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.4, result = "big-assembling-machine-1"},
    max_health = 600,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    icon_draw_specification = {shift = {0, -0.3}},
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-10.2, -10.2}, {10.2, 10.2}},
    selection_box = {{-10.35, -10.35}, {10.35, 10.35}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "assembling-machine",
    --next_upgrade = "big-assembling-machine-2",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
            priority="high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            scale = 3.5
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
            priority="high",
            width = 190,
            height = 165,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5),
            scale = 3.5
          }
        }
      }
    },
    crafting_categories = {"crafting", "basic-crafting", "advanced-crafting"},
    crafting_speed = 24,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 240 }
    },
    energy_usage = "4500kW",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    allowed_effects = {"speed", "consumption", "pollution"},
    effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "metal",
    working_sound =
    {
      sound = {filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.5, audible_distance_modifier = 0.5},
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  },

  {  --Большой сборочный автомат 2
    type = "assembling-machine",
    name = "big-assembling-machine-2",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.4, result = "big-assembling-machine-2"},
    max_health = 700,
    corpse = "assembling-machine-2-remnants",
    dying_explosion = "assembling-machine-2-explosion",
    icon_draw_specification = {shift = {0, -0.3}},
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    alert_icon_shift = util.by_pixel(0, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -10} }}, --0, -1
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {0, 10} }}, --0, 1
        secondary_draw_orders = { north = -1 }
      }
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    collision_box = {{-10.2, -10.2}, {10.2, 10.2}},
    selection_box = {{-10.5, -10.5}, {10.5, 10.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "assembling-machine",
    --next_upgrade = "assembling-machine-3",
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 4
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 4
          }
        }
      },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    impact_category = "metal",
    working_sound =
    {
      sound = {filename = "__base__/sound/assembling-machine-t2-1.ogg", volume = 0.45, audible_distance_modifier = 0.5},
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid"},

    crafting_speed = 36,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 180 }
    },
    energy_usage = "9000kW",
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"}
  },

  {  --Большой железный сундук
    type = "container",
    name = "big-iron-chest",
    icon = "__base__/graphics/icons/iron-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.4, result = "big-iron-chest"},
    max_health = 400,
    corpse = "iron-chest-remnants",
    dying_explosion = "iron-chest-explosion",
    open_sound = sounds.metallic_chest_open,
    close_sound = sounds.metallic_chest_close,
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "container",
    inventory_size = 1536,
    impact_category = "metal",
    icon_draw_specification = {scale = 0.7},
    picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/iron-chest/iron-chest.png",
          priority = "extra-high",
          width = 66,
          height = 76,
          shift = util.by_pixel(-0.5, -0.5),
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/iron-chest/iron-chest-shadow.png",
          priority = "extra-high",
          width = 110,
          height = 50,
          shift = util.by_pixel(10.5, 6),
          draw_as_shadow = true,
          scale = 3.5
        }
      }
    },
    circuit_connector = circuit_connector_definitions["chest"],
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

  {  --Большая лаборатория
    type = "lab",
    name = "big-lab",
    icon = "__base__/graphics/icons/lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.4, result = "big-lab"},
    fast_replaceable_group = "lab",
    max_health = 300,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = {{-10.2, -10.2}, {10.2, 10.2}},
    selection_box = {{-10.5, -10.5}, {10.5, 10.5}},
    damaged_trigger_effect = hit_effects.entity(),
    on_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 194,
          height = 174,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 242,
          height = 162,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/lab/lab-light.png",
          blend_mode = "additive",
          draw_as_light = true,
          width = 216,
          height = 194,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 0),
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 242,
          height = 136,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          scale = 3.5,
          draw_as_shadow = true
        }
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 194,
          height = 174,
          shift = util.by_pixel(0, 1.5),
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 242,
          height = 162,
          shift = util.by_pixel(0, 15.5),
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 242,
          height = 136,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          scale = 3.5
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7,
        modifiers = {volume_multiplier("main-menu", 2.2), volume_multiplier("tips-and-tricks", 0.8)},
        audible_distance_modifier = 0.7,
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    impact_category = "glass",
    open_sound = sounds.lab_open,
    close_sound = sounds.lab_close,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "3600kW",
    researching_speed = 48,
    inputs =
    {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack"
    },
    module_slots = 2,
    icons_positioning =
    {
      {inventory_index = defines.inventory.lab_modules, shift = {0, 0.9}},
      {inventory_index = defines.inventory.lab_input, shift = {0, 0}, max_icons_per_row = 4, separation_multiplier = 1/1.1}
    },
  },

  {  --Большой радар
    type = "radar",
    name = "big-radar",
    icon = "__base__/graphics/icons/radar.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "big-radar"},
    fast_replaceable_group = "radar",
    max_health = 500,
    corpse = "radar-remnants",
    dying_explosion = "radar-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-10.2, -10.2}, {10.2, 10.2}},
    selection_box = {{-10.5, -10.5}, {10.5, 10.5}},
    damaged_trigger_effect = hit_effects.entity(),
    energy_per_sector = "12500kJ", --10MJ
    max_distance_of_sector_revealed = 36, --14
    max_distance_of_nearby_sector_revealed = 8, --3
    --14*14 = 196, 3*3 = 9, 196*9*48 = 84672
    --36*36 = 1296, 8*8 = 64, 1296*64 = 82944, 
    --наиболее приближенно к изначальной площади, умноженной на 48. С сохранением пропорций.
    energy_per_nearby_scan = "12000kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "14400kW",
    integration_patch =
    {
      filename = "__base__/graphics/entity/radar/radar-integration.png",
      priority = "low",
      width = 238,
      height = 216,
      shift = util.by_pixel(1.5, 4.0),
      scale = 3.5
    },
    pictures =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/radar/radar.png",
          priority = "low",
          width = 196,
          height = 254,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1.0, -112.0),
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/radar/radar-shadow.png",
          priority = "low",
          width = 336,
          height = 170,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(39.0, -90.0),
          draw_as_shadow = true,
          scale = 3.5
        }
      }
    },
    impact_category = "metal",
    working_sound =
    {
      sound = {filename = "__base__/sound/radar.ogg", volume = 0.8, modifiers = volume_multiplier("main-menu", 2.0)},
      max_sounds_per_prototype = 3,
      use_doppler_shift = false
    },
    radius_minimap_visualisation_color = {0.059, 0.092, 0.235, 0.275},
    rotation_speed = 0.01,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/radar/radar-reflection.png",
        priority = "extra-high",
        width = 28,
        height = 32,
        shift = util.by_pixel(5, -61),
        variation_count = 1,
        scale = 35
      },
      rotate = false,
      orientation_to_variation = false
    },
    is_military_target = false,
    circuit_connector = circuit_connector_definitions["radar"],
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

  {  --Большой бойлер
    type = "boiler",
    name = "big-boiler",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.4, result = "big-boiler"},
    fast_replaceable_group = "boiler",
    max_health = 400,
    corpse = "boiler-remnants",
    dying_explosion = "boiler-explosion",
    impact_category = "metal-large",
    mode = "output-to-separate-pipe",
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
    collision_box = {{-10.3, -6.8}, {10.3, 6.8}},
    selection_box = {{-10.5, -7}, {10.5, 7}},
    damaged_trigger_effect = hit_effects.entity(),
    target_temperature = 165,
    fluid_box =
    {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "input-output", direction = defines.direction.west, position = {-10.3, 0.5}}, -- -1, 0.5
        {flow_direction = "input-output", direction = defines.direction.east, position = {10.3, 0.5}} -- 1, 0.5
      },
      production_type = "input",
      filter = "water"
    },
    output_fluid_box =
    {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {flow_direction = "output", direction = defines.direction.north, position = {0, -6.8}} -- 0, -0.5
      },
      production_type = "output",
      filter = "steam"
    },
    energy_consumption = "86400kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      fuel_inventory_size = 5,
      emissions_per_minute = { pollution = 1800 },
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
          north_position = util.by_pixel(-38, -47.5),
          south_position = util.by_pixel(38.5, -32),
          east_position = util.by_pixel(20, -70),
          west_position = util.by_pixel(-19, -8.5),
          frequency = 15,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60
        }
      }
    },
    working_sound =
    {
      sound = {filename = "__base__/sound/boiler.ogg", volume = 0.7, audible_distance_modifier = 0.3},
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    open_sound = sounds.steam_open,
    close_sound = sounds.steam_close,

    pictures =
    {
      north =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              scale = 3.5
            },
            {
              filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 3.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true
            }
          }
        },
        fire =
        {
          filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 26,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -8.5),
          scale = 3.5
        },
        fire_glow =
        {
          filename = "__base__/graphics/entity/boiler/boiler-N-light.png",
          draw_as_glow = true,
          priority = "extra-high",
          width = 200,
          height = 173,
          shift = util.by_pixel(-1, -6.75),
          blend_mode = "additive",
          scale = 3.5
        },
      },
      east =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",
              priority = "extra-high",
              width = 216,
              height = 301,
              shift = util.by_pixel(-3, 1.25),
              scale = 3.5
            },
            {
              filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 3.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true
            }
          }
        },
        patch =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
          width = 6,
          height = 36,
          shift = util.by_pixel(33.5, -13.5),
          scale = 3.5
        },
        fire =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 28,
          height = 28,
          animation_speed = 0.5,
          shift = util.by_pixel(-9.5, -22),
          scale = 3.5
        },
        fire_glow =
        {
          filename = "__base__/graphics/entity/boiler/boiler-E-light.png",
          draw_as_glow = true,
          priority = "extra-high",
          width = 139,
          height = 244,
          shift = util.by_pixel(0.25, -13),
          blend_mode = "additive",
          scale = 3.5
        },
      },
      south =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 192,
              shift = util.by_pixel(4, 13),
              scale = 3.5
            },
            {
              filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 3.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true
            }
          },
        },
        fire =
        {
          filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 16,
          animation_speed = 0.5,
          shift = util.by_pixel(-1, -26.5),
          scale = 3.5
        },
        fire_glow =
        {
          filename = "__base__/graphics/entity/boiler/boiler-S-light.png",
          draw_as_glow = true,
          priority = "extra-high",
          width = 200,
          height = 162,
          shift = util.by_pixel(1, 5.5),
          blend_mode = "additive",
          scale = 3.5
        },
      },
      west =
      {
        structure =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              scale = 3.5
            },
            {
              filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 3.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true
            }
          },
        },
        fire =
        {
          filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 30,
          height = 29,
          animation_speed = 0.5,
          shift = util.by_pixel(13, -23.25),
          scale = 3.5
        },
        fire_glow =
        {
          filename = "__base__/graphics/entity/boiler/boiler-W-light.png",
          draw_as_glow = true,
          priority = "extra-high",
          width = 136,
          height = 217,
          shift = util.by_pixel(2, -6.25),
          blend_mode = "additive",
          scale = 3.5
        },
      }
    },

    fire_flicker_enabled = true,
    fire_glow_flicker_enabled = true,
    burning_cooldown = 20,
    water_reflection = boiler_reflection()
  },

  {  --Большой паровой двигатель
    type = "generator",
    name = "big-steam-engine",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.6, result = "big-steam-engine"},
    max_health = 800,
    corpse = "steam-engine-remnants",
    dying_explosion = "steam-engine-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    effectivity = 1,
    fluid_usage_per_tick = 24,
    maximum_temperature = 165,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fast_replaceable_group = "steam-engine",
    collision_box = {{-10.25, -17.35}, {10.25, 17.35}},
    selection_box = {{-10.5, -17.5}, {10.5, 17.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      volume = 200,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { flow_direction = "input-output", direction = defines.direction.south, position = {0, 17} }, -- 0, 2
        { flow_direction = "input-output", direction = defines.direction.north, position = {0, -17} } -- 0, -2
      },
      production_type = "input",
      filter = "steam",
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
          width = 352,
          height = 257,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(1, -4.75),
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
          width = 508,
          height = 160,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(48, 24),
          scale = 3.5
        }
      }
    },
    vertical_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-V.png",
          width = 225,
          height = 391,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(28.75, -44.25), --4.75
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
          width = 330,
          height = 307,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(64.5, -41.25), --40.5
          scale = 3.5
        }
      }
    },
    smoke =
    {
      {
        name = "light-smoke",
        north_position = {0.9, 0.0},
        east_position = {-2.0, -2.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        starting_frame_deviation = 60
      }
    },
    impact_category = "metal-large",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.55,
        speed_smoothing_window_size = 60,
        modifiers = volume_multiplier("tips-and-tricks", 1.1),
        audible_distance_modifier = 0.8,
      },
      match_speed_to_activity = true,
      max_sounds_per_prototype = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    perceived_performance = {minimum = 0.25, performance_to_activity_rate = 2.0},
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/steam-engine/steam-engine-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 44,
        shift = util.by_pixel(0, 55),
        variation_count = 2,
        repeat_count = 2,
        scale = 35
      },
      rotate = false,
      orientation_to_variation = true
    }
  },

  {  --Большой нефтеперерабатывающий завод
    type = "assembling-machine",
    name = "big-oil-refinery",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.4, result = "big-oil-refinery"},
    fast_replaceable_group = "oil-refinery",
    max_health = 700,
    corpse = "oil-refinery-remnants",
    dying_explosion = "oil-refinery-explosion",
    icon_draw_specification = {scale = 2, shift = {0, -0.3}},
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["oil-refinery"],
    collision_box = {{-17.4, -17.4}, {17.4, 17.4}},
    collision_mask = {layers={item=true, object=true, player=true, water_tile=true, elevated_rail=true, is_object=true, is_lower_object=true, meltable=true}},
    selection_box = {{-17.5, -17.5}, {17.5, 17.5}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 0.3,
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 48,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 360 } -- 6
    },
    energy_usage = "25200kW",

    graphics_set =
    {
      animation = make_4way_animation_from_spritesheet(
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            width = 386,
            height = 430,
            shift = util.by_pixel(0, -52.5), -- 0, -7.5
            scale = 3.5
          },
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            width = 674,
            height = 426,
            shift = util.by_pixel(82.5, -31.5), -- 82.5, 26.5
            draw_as_shadow = true,
            scale = 3.5
          }
        }
      }),

      working_visualisations =
      {
        {
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 3.5,
            draw_as_glow = true,
            shift = util.by_pixel(0, -59.25) -- 0, -14.25
          },
        },
        {
          fadeout = true,
          north_animation =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
            width = 321,
            height = 205,
            blend_mode = "additive",
            draw_as_glow = true,
            shift = util.by_pixel(-1, -45),
            scale = 3.5,
          },
          east_animation =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
            width = 321,
            x = 321;
            height = 205,
            blend_mode = "additive",
            draw_as_glow = true,
            shift = util.by_pixel(-1, -50),
            scale = 3.5,
          },
          south_animation =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
            width = 321,
            x = 321 * 2;
            height = 205,
            blend_mode = "additive",
            draw_as_glow = true,
            shift = util.by_pixel(-1, -50),
            scale = 3.5,
          },
          west_animation =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-light.png",
            width = 321,
            x = 321 * 3;
            height = 205,
            blend_mode = "additive",
            draw_as_glow = true,
            shift = util.by_pixel(-1, -50),
            scale = 3.5,
          },
        }
      }
    },
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {
            flow_direction="input",
            direction = defines.direction.south,
            position = {-7, 17} -- -1, 2
          }
        }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {
            flow_direction="input",
            direction = defines.direction.south,
            position = {7, 17} -- 1, 2
          }
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections =
        {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = {-14, -17} -- -2, -2
          }
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections =
        {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = {0, -17} -- 0, -2
          }
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections =
        {
          {
            flow_direction = "output",
            direction = defines.direction.north,
            position = {14, -17} -- 2, -2
          }
        }
      }
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 48,
        shift = util.by_pixel(5, 95),
        variation_count = 4,
        scale = 35
      },
      rotate = false,
      orientation_to_variation = true
    }
  },

  {  --Большая деревянная опора ЛЭП
    type = "electric-pole",
    name = "big-small-electric-pole",
    icon = "__base__/graphics/icons/small-electric-pole.png",
    quality_indicator_scale = 0.75,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "big-small-electric-pole"},
    max_health = 100,
    corpse = "small-electric-pole-remnants",
    dying_explosion = "small-electric-pole-explosion",
    collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
    selection_box = {{-3.4, -3.4}, {3.4, 3.4}},
    damaged_trigger_effect = hit_effects.entity({{-0.2, -2.2}, {0.2, 0.2}}),
    drawing_box_vertical_extension = 2.2,
    maximum_wire_distance = 52,5,
    supply_area_distance = 18,
    impact_category = "wood",
    open_sound = sounds.electric_network_open,
    close_sound = sounds.electric_network_close,
    fast_replaceable_group = "electric-pole",
    pictures =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole.png",
          priority = "extra-high",
          width = 72,
          height = 220,
          direction_count = 4,
          shift = util.by_pixel(1.5, -248,5), -- 1.5, -42.5
          scale = 3.5
        },
        {
          filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole-shadow.png",
          priority = "extra-high",
          width = 256,
          height = 52,
          direction_count = 4,
          shift = util.by_pixel(51, -199), -- 51, 3)
          draw_as_shadow = true,
          scale = 3.5
        }
      }
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = util.by_pixel(98.5, -428.5),
          red = util.by_pixel(111.0, -428.5),
          green = util.by_pixel(85.5, -428.0)
        },
        wire =
        {
          copper = util.by_pixel(0.0, -513),
          red = util.by_pixel(13.0, -513),
          green = util.by_pixel(-12.5, -513)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(99.5, -440.0),
          red = util.by_pixel(110.0, -440.0),
          green = util.by_pixel(92.5, -440.0)
        },
        wire =
        {
          copper = util.by_pixel(1.5, -521.0),
          red = util.by_pixel(12.0, -521.0),
          green = util.by_pixel(-6.0, -521.0)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(100.5, -435.5),
          red = util.by_pixel(102.5, -435.5),
          green = util.by_pixel(103.5, -435.5)
        },
        wire =
        {
          copper = util.by_pixel(2.5, -521.5),
          red = util.by_pixel(4.0, -521.0),
          green = util.by_pixel(5.0, -521.5)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(98.5, -451.5),
          red = util.by_pixel(88.0, -451.5),
          green = util.by_pixel(106.0, -451.0)
        },
        wire =
        {
          copper = util.by_pixel(0.5, -86.5),
          red = util.by_pixel(-10.5, -81.5),
          green = util.by_pixel(8.0, -93.5)
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole-reflection.png",
        priority = "extra-high",
        width = 12,
        height = 28,
        shift = util.by_pixel(5, 40),
        variation_count = 4,
        scale = 35
      },
      rotate = false,
      orientation_to_variation = true
    }
  },

  {  --Большой транспортный дрон
    type = "logistic-robot",
    name = "big-logistic-robot",
    icon = "__base__/graphics/icons/logistic-robot.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.5, result = "big-logistic-robot"},
    is_military_target = false,
    resistances =
    {
      {
        type = "fire",
        percent = 85
      }
    },
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "logistic-robot-explosion",
    max_payload_size = 1,
    speed = 2,4,
    max_energy = "90MJ",
    energy_per_tick = "0.0625kJ",
    speed_multiplier_when_out_of_energy = 9,6,
    energy_per_move = "6.25kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = sounds.flying_robot(0.48),
    charging_sound = sounds.robot_charging,
    icon_draw_specification = {shift = {0, -0.2}, scale = 0.5, render_layer = "air-entity-info-icon"},
    water_reflection = robot_reflection(1),
    idle = robot_animations.logistic_robot.idle,
    idle_with_cargo = robot_animations.logistic_robot.idle_with_cargo,
    in_motion = robot_animations.logistic_robot.in_motion,
    in_motion_with_cargo = robot_animations.logistic_robot.in_motion_with_cargo,
    shadow_idle = robot_animations.logistic_robot.shadow_idle,
    shadow_idle_with_cargo = robot_animations.logistic_robot.shadow_idle_with_cargo,
    shadow_in_motion = robot_animations.logistic_robot.shadow_in_motion,
    shadow_in_motion_with_cargo = robot_animations.logistic_robot.shadow_in_motion_with_cargo
  },
})