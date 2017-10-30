Types::LanguageType = GraphQL::ObjectType.define do
  name "Language"
  description ""

  field :id, !types.ID, "", property: :id
  field :iso639, !types.String, "", property: :iso639
  field :iso3166, !types.String, "", property: :iso3166
  field :identifier, !types.String, "", property: :identifier
  field :official, !types.Boolean, "", property: :official
  field :order, !types.Int, "", property: :order

  field :abilityChangelogProses, !types[Types::AbilityChangelogProseType], "", property: :ability_changelog_proses
  field :abilityFlavorTexts, !types[Types::AbilityFlavorTextType], "", property: :ability_flavor_texts
  field :abilityNames, !types[Types::AbilityNameType], "", property: :ability_names
  field :abilityProse, !types[Types::AbilityProseType], "", property: :ability_prose
  field :berryFirmnessNames, !types[Types::BerryFirmnessNameType], "", property: :berry_firmness_names
  field :characteristicTexts, !types[Types::CharacteristicTextType], "", property: :characteristic_texts
  field :contestEffectProses, !types[Types::ContestEffectProseType], "", property: :contest_effect_proses
  field :contestTypeNames, !types[Types::ContestTypeNameType], "", property: :contest_type_names
  field :eggGroupProses, !types[Types::EggGroupProseType], "", property: :egg_group_proses
  field :encounterConditionProses, !types[Types::EncounterConditionProseType], "", property: :encounter_condition_proses
  field :encounterConditionValueProses, !types[Types::EncounterConditionValueProseType], "", property: :encounter_condition_value_proses
  field :encounterMethodProses, !types[Types::EncounterMethodProseType], "", property: :encounter_method_proses
  field :evolutionTriggerProses, !types[Types::EvolutionTriggerProseType], "", property: :evolution_trigger_proses
  field :generationNames, !types[Types::GenerationNameType], "", property: :generation_names
  field :growthRateProses, !types[Types::GrowthRateProseType], "", property: :growth_rate_proses
  field :itemCategoryProses, !types[Types::ItemCategoryProseType], "", property: :item_category_proses
  field :itemFlagProses, !types[Types::ItemFlagProseType], "", property: :item_flag_proses
  field :itemFlavorSummaries, !types[Types::ItemFlavorSummaryType], "", property: :item_flavor_summaries
  field :itemFlavorTexts, !types[Types::ItemFlavorTextType], "", property: :item_flavor_texts
  field :itemFlingEffectProses, !types[Types::ItemFlingEffectProseType], "", property: :item_fling_effect_proses
  field :itemNames, !types[Types::ItemNameType], "", property: :item_names
  field :itemPocketNames, !types[Types::ItemPocketNameType], "", property: :item_pocket_names
  field :itemProses, !types[Types::ItemProseType], "", property: :item_proses
  field :languageNames, !types[Types::LanguageNameType], "", property: :language_names
  field :localLanguageNames, !types[Types::LanguageNameType], "", property: :local_language_names
  field :locationAreaProses, !types[Types::LocationAreaProseType], "", property: :location_area_proses
  field :locationNames, !types[Types::LocationNameType], "", property: :location_names
  field :moveBattleStyleProses, !types[Types::MoveBattleStyleProseType], "", property: :move_battle_style_proses
  field :moveDamageClassProses, !types[Types::MoveDamageClassProseType], "", property: :move_damage_class_proses
  field :moveEffectChangelogProses, !types[Types::MoveEffectChangelogProseType], "", property: :move_effect_changelog_proses
  field :moveEffectProses, !types[Types::MoveEffectProseType], "", property: :move_effect_proses
  field :moveFlagProses, !types[Types::MoveFlagProseType], "", property: :move_flag_proses
  field :moveFlavorSummaries, !types[Types::MoveFlavorSummaryType], "", property: :move_flavor_summaries
  field :moveFlavorTexts, !types[Types::MoveFlavorTextType], "", property: :move_flavor_texts
  field :moveMetaAilmentNames, !types[Types::MoveMetaAilmentNameType], "", property: :move_meta_ailment_names
  field :moveMetaCategoryProses, !types[Types::MoveMetaCategoryProseType], "", property: :move_meta_category_proses
  field :moveNames, !types[Types::MoveNameType], "", property: :move_names
  field :moveTargetProses, !types[Types::MoveTargetProseType], "", property: :move_target_proses
  field :natureNames, !types[Types::NatureNameType], "", property: :nature_names
  field :palParkAreaNames, !types[Types::PalParkAreaNameType], "", property: :pal_park_area_names
  field :pokeathlonStatNames, !types[Types::PokeathlonStatNameType], "", property: :pokeathlon_stat_names
  field :pokedexProses, !types[Types::PokedexProseType], "", property: :pokedex_proses
  field :pokemonColorNames, !types[Types::PokemonColorNameType], "", property: :pokemon_color_names
  field :pokemonFormNames, !types[Types::PokemonFormNameType], "", property: :pokemon_form_names
  field :pokemonHabitatNames, !types[Types::PokemonHabitatNameType], "", property: :pokemon_habitat_names
  field :pokemonMoveMethodProses, !types[Types::PokemonMoveMethodProseType], "", property: :pokemon_move_method_proses
  field :pokemonShapeProses, !types[Types::PokemonShapeProseType], "", property: :pokemon_shape_proses
  field :pokemonSpeciesFlavorSummaries, !types[Types::PokemonSpeciesFlavorSummaryType], "", property: :pokemon_species_flavor_summaries
  field :pokemonSpeciesFlavorTexts, !types[Types::PokemonSpeciesFlavorTextType], "", property: :pokemon_species_flavor_texts
  field :pokemonSpeciesNames, !types[Types::PokemonSpeciesNameType], "", property: :pokemon_species_names
  field :pokemonSpeciesProses, !types[Types::PokemonSpeciesProseType], "", property: :pokemon_species_proses
  field :regionNames, !types[Types::RegionNameType], "", property: :region_names
  field :statNames, !types[Types::StatNameType], "", property: :stat_names
  field :superContestEffectProses, !types[Types::SuperContestEffectProseType], "", property: :super_contest_effect_proses
  field :typeNames, !types[Types::TypeNameType], "", property: :type_names
  field :versionNames, !types[Types::VersionNameType], "", property: :version_names
end
