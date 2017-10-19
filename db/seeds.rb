require 'csv'

# 'file.csv' => Model
files = {
  'pokemon_species.csv' => PokemonSpecy,
  'pokemon.csv' => Pokemon,
  'pokemon_colors.csv' => PokemonColor,
  'abilities.csv' => Ability,
  'ability_changelog.csv' => AbilityChangelog,
  'ability_changelog_prose.csv' => AbilityChangelogProse,
  'ability_flavor_text.csv' => AbilityFlavorText,
  'ability_names.csv' => AbilityName,
  'ability_prose.csv' => AbilityProse,
  'berries.csv' => Berry,
  'berry_firmness.csv' => BerryFirmness,
  'berry_firmness_names.csv' => BerryFirmnessName,
  'berry_flavors.csv' => BerryFlavor,
  'characteristic_text.csv' => CharacteristicText,
  'characteristics.csv' => Characteristic,
  'contest_combos.csv' => ContestCombo,
  'contest_effect_prose.csv' => ContestEffectProse,
  'contest_effects.csv' => ContestEffect,
  'contest_type_names.csv' => ContestTypeName,
  'contest_types.csv' => ContestType,
  'egg_group_prose.csv' => EggGroupProse,
  'egg_groups.csv' => EggGroup,
  'encounter_condition_prose.csv' => EncounterConditionProse,
  'encounter_condition_value_map.csv' => EncounterConditionValueMap,
  'encounter_condition_value_prose.csv' => EncounterConditionValueProse,
  'encounter_condition_values.csv' => EncounterConditionValue,
  'encounter_conditions.csv' => EncounterCondition,
  'encounter_method_prose.csv' => EncounterMethodProse,
  'encounter_methods.csv' => EncounterMethod,
  'encounter_slots.csv' => EncounterSlot,
  'encounters.csv' => Encounter,
  'evolution_chains.csv' => EvolutionChain,
  'evolution_trigger_prose.csv' => EvolutionTriggerProse,
  'evolution_triggers.csv' => EvolutionTrigger,
  'experience.csv' => Experience,
  'genders.csv' => Gender,
  'generation_names.csv' => GenerationName,
  'generations.csv' => Generation,
  'growth_rate_prose.csv' => GrowthRateProse,
  'growth_rates.csv' => GrowthRate,
  'item_categories.csv' => ItemCategory,
  'item_category_prose.csv' => ItemCategoryProse,
  'item_flag_map.csv' => ItemFlagMap,
  'item_flag_prose.csv' => ItemFlagProse,
  'item_flags.csv' => ItemFlag,
  'item_flavor_summaries.csv' => ItemFlavorSummary,
  'item_flavor_text.csv' => ItemFlavorText,
  'item_fling_effect_prose.csv' => ItemFlingEffectProse,
  'item_fling_effects.csv' => ItemFlingEffect,
  'item_game_indices.csv' => ItemGameIndicy,
  'item_names.csv' => ItemName,
  'item_pocket_names.csv' => ItemPocketName,
  'item_pockets.csv' => ItemPocket,
  'item_prose.csv' => ItemProse,
  'items.csv' => Item,
  'language_names.csv' => LanguageName,
  'languages.csv' => Language,
  'location_area_encounter_rates.csv' => LocationAreaEncounterRate,
  'location_area_prose.csv' => LocationAreaProse,
  'location_areas.csv' => LocationArea,
  'location_game_indices.csv' => LocationGameIndex,
  'location_names.csv' => LocationName,
  'locations.csv' => Location,
  'machines.csv' => Machine,
  'move_battle_style_prose.csv' => MoveBattleStyleProse,
  'move_battle_styles.csv' => MoveBattleStyle,
  'move_changelog.csv' => MoveChangelog,
  'move_damage_class_prose.csv' => MoveDamageClassProse,
  'move_damage_classes.csv' => MoveDamageClass,
  'move_effect_changelog.csv' => MoveEffectChangelog,
  'move_effect_changelog_prose.csv' => MoveEffectChangelogProse,
  'move_effect_prose.csv' => MoveEffectProse,
  'move_effects.csv' => MoveEffect,
  'move_flag_map.csv' => MoveFlagMap,
  'move_flag_prose.csv' => MoveFlagProse,
  'move_flags.csv' => MoveFlag,
  'move_flavor_summaries.csv' => MoveFlavorSummary,
  'move_flavor_text.csv' => MoveFlavorText,
  'move_meta.csv' => MoveMetum,
  'move_meta_ailment_names.csv' => MoveMetaAilmentName,
  'move_meta_ailments.csv' => MoveMetaAilment,
  'move_meta_categories.csv' => MoveMetaCategory,
  'move_meta_category_prose.csv' => MoveMetaCategoryProse,
  'move_meta_stat_changes.csv' => MoveMetaStatChange,
  'move_names.csv' => MoveName,
  'move_target_prose.csv' => MoveTargetProse,
  'move_targets.csv' => MoveTarget,
  'moves.csv' => Move,
  'nature_battle_style_preferences.csv' => NatureBattleStylePreference,
  'nature_names.csv' => NatureName,
  'nature_pokeathlon_stats.csv' => NaturePokeathlonStat,
  'natures.csv' => Nature,
  'pal_park.csv' => PalPark,
  'pal_park_area_names.csv' => PalParkAreaName,
  'pal_park_areas.csv' => PalParkArea,
  'pokeathlon_stat_names.csv' => PokeathlonStatName,
  'pokeathlon_stats.csv' => PokeathlonStat,
  'pokedex_prose.csv' => PokedexProse,
  'pokedex_version_groups.csv' => PokedexVersionGroup,
  'pokedexes.csv' => Pokedex,
  'pokemon_abilities.csv' => PokemonAbility,
  'pokemon_color_names.csv' => PokemonColorName,
  'pokemon_dex_numbers.csv' => PokemonDexNumber,
  'pokemon_egg_groups.csv' => PokemonEggGroup,
  'pokemon_evolution.csv' => PokemonEvolution,
  'pokemon_form_generations.csv' => PokemonFormGeneration,
  'pokemon_form_names.csv' => PokemonFormName,
  'pokemon_form_pokeathlon_stats.csv' => PokemonFormPokeathlonStat,
  'pokemon_forms.csv' => PokemonForm,
  'pokemon_game_indices.csv' => PokemonGameIndex,
  'pokemon_habitat_names.csv' => PokemonHabitatName,
  'pokemon_habitats.csv' => PokemonHabitat,
  'pokemon_items.csv' => PokemonItem,
  'pokemon_move_method_prose.csv' => PokemonMoveMethodProse,
  'pokemon_move_methods.csv' => PokemonMoveMethod,
  'pokemon_moves.csv' => PokemonMove,
  'pokemon_shape_prose.csv' => PokemonShapeProse,
  'pokemon_shapes.csv' => PokemonShape,
  'pokemon_species_flavor_summaries.csv' => PokemonSpeciesFlavorSummary,
  'pokemon_species_flavor_text.csv' => PokemonSpeciesFlavorText,
  'pokemon_species_names.csv' => PokemonSpeciesName,
  'pokemon_species_prose.csv' => PokemonSpeciesProse,
  'pokemon_stats.csv' => PokemonStat,
  'pokemon_types.csv' => PokemonType,
  'region_names.csv' => RegionName,
  'regions.csv' => Region,
  'stat_names.csv' => StatName,
  'stats.csv' => Stat,
  'super_contest_combos.csv' => SuperContestCombo,
  'super_contest_effect_prose.csv' => SuperContestEffectProse,
  'super_contest_effects.csv' => SuperContestEffect,
  'type_efficacy.csv' => TypeEfficacy,
  'type_game_indices.csv' => TypeGameIndex,
  'type_names.csv' => TypeName,
  'types.csv' => Type,
  'version_group_pokemon_move_methods.csv' => VersionGroupPokemonMoveMethod,
  'version_group_regions.csv' => VersionGroupRegion,
  'version_groups.csv' => VersionGroup,
  'version_names.csv' => VersionName,
  'versions.csv' => Version,
}

connection = ActiveRecord::Base.connection()

# add all data in each csv file to the database 
files.keys.each do |file|
  if files[file].count == 0
    csv_text = File.read(Rails.root.join('lib', 'seeds', file))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

    # need to temporarily disable the triggers because of foreign keys
    connection.execute("ALTER TABLE #{files[file].table_name} DISABLE TRIGGER ALL")

    csv.each do |row|
      t = files[file].new

      csv.headers.each do |header|
        t[header] = row[header]
      end

      t.save(validate: false)
    end

    # reenable the triggers
    connection.execute("ALTER TABLE #{files[file].table_name} ENABLE TRIGGER ALL")

    puts "#{file} added to the database. #{files[file].count} entries."
  else
    # puts "#{file} already in the database."
  end
end