
```
sts_lightspeed
├─ CMakeLists.txt
├─ LICENSE.md
├─ README.md
├─ apps
│  ├─ main.cpp
│  ├─ small-test.cpp
│  └─ test.cpp
├─ bindings
│  ├─ bindings-util.cpp
│  ├─ slaythespire.cpp
│  └─ slaythespire.h
├─ include
│  ├─ .DS_Store
│  ├─ combat
│  │  ├─ ActionQueue.h
│  │  ├─ Actions.h
│  │  ├─ BattleContext.h
│  │  ├─ CardInstance.h
│  │  ├─ CardManager.h
│  │  ├─ CardQueue.h
│  │  ├─ CardSelectInfo.h
│  │  ├─ InputState.h
│  │  ├─ Monster.h
│  │  ├─ MonsterGroup.h
│  │  └─ Player.h
│  ├─ constants
│  │  ├─ CardPools.h
│  │  ├─ Cards.h
│  │  ├─ CharacterClasses.h
│  │  ├─ Events.h
│  │  ├─ Misc.h
│  │  ├─ MonsterEncounters.h
│  │  ├─ MonsterIds.h
│  │  ├─ MonsterMoves.h
│  │  ├─ MonsterStatusEffects.h
│  │  ├─ PlayerStatusEffects.h
│  │  ├─ Potions.h
│  │  ├─ RelicPools.h
│  │  ├─ Relics.h
│  │  ├─ Rooms.h
│  │  └─ SaveFileMappings.h
│  ├─ data_structure
│  │  └─ fixed_list.h
│  ├─ game
│  │  ├─ Card.h
│  │  ├─ Deck.h
│  │  ├─ Game.h
│  │  ├─ GameContext.h
│  │  ├─ Map.h
│  │  ├─ Neow.h
│  │  ├─ Random.h
│  │  ├─ RelicContainer.h
│  │  ├─ Rewards.h
│  │  ├─ SaveFile.h
│  │  └─ Shop.h
│  ├─ sim
│  │  ├─ BattleSimulator.h
│  │  ├─ ConsoleSimulator.h
│  │  ├─ PrintHelpers.h
│  │  ├─ RandomAgent.h
│  │  ├─ SimHelpers.h
│  │  └─ search
│  │     ├─ Action.h
│  │     ├─ BattleScumSearcher2.h
│  │     ├─ ExpertKnowledge.h
│  │     ├─ GameAction.h
│  │     ├─ ScumSearchAgent2.h
│  │     └─ SimpleAgent.h
│  └─ sts_common.h
├─ json
├─ pybind11
└─ src
   ├─ combat
   │  ├─ Actions.cpp
   │  ├─ BattleContext.cpp
   │  ├─ CardInstance.cpp
   │  ├─ CardManager.cpp
   │  ├─ CardQueue.cpp
   │  ├─ Monster.cpp
   │  ├─ MonsterGroup.cpp
   │  ├─ MonsterMoveDamage.cpp
   │  ├─ MonsterSpecific.cpp
   │  └─ Player.cpp
   ├─ game
   │  ├─ Card.cpp
   │  ├─ CombatReward.cpp
   │  ├─ Deck.cpp
   │  ├─ Game.cpp
   │  ├─ GameContext.cpp
   │  ├─ Map.cpp
   │  ├─ Neow.cpp
   │  ├─ SaveFile.cpp
   │  └─ Shop.cpp
   └─ sim
      ├─ BattleSimulator.cpp
      ├─ ConsoleSimulator.cpp
      ├─ PrintHelpers.cpp
      ├─ SimHelpers.cpp
      └─ search
         ├─ Action.cpp
         ├─ BattleScumSearcher2.cpp
         ├─ ExpertKnowledge.cpp
         ├─ GameAction.cpp
         ├─ ScumSearchAgent2.cpp
         └─ SimpleAgent.cpp

```
```
sts_lightspeed
├─ CMakeLists.txt
├─ LICENSE.md
├─ README.md
├─ STRUCTURE.md
├─ apps
│  ├─ main.cpp
│  ├─ small-test.cpp
│  └─ test.cpp
├─ bindings
│  ├─ bindings-util.cpp
│  ├─ doc.md
│  ├─ slaythespire.cpp
│  └─ slaythespire.h
├─ build
│  ├─ json
│  │  ├─ nlohmann_json.pc
│  │  ├─ nlohmann_jsonConfig.cmake
│  │  └─ nlohmann_jsonConfigVersion.cmake
│  ├─ main
│  ├─ pybind11
│  ├─ small-test
│  └─ test
├─ check_build_env.sh
├─ include
│  ├─ combat
│  │  ├─ ActionQueue.h
│  │  ├─ Actions.h
│  │  ├─ BattleContext.h
│  │  ├─ CardInstance.h
│  │  ├─ CardManager.h
│  │  ├─ CardQueue.h
│  │  ├─ CardSelectInfo.h
│  │  ├─ InputState.h
│  │  ├─ Monster.h
│  │  ├─ MonsterGroup.h
│  │  ├─ Player.h
│  │  └─ doc
│  │     ├─ Action_doc.txt
│  │     ├─ battlecontext_doc.txt
│  │     ├─ card_doc.txt
│  │     ├─ monster_doc.txt
│  │     └─ player_doc.txt
│  ├─ constants
│  │  ├─ CardPools.h
│  │  ├─ Cards.h
│  │  ├─ CharacterClasses.h
│  │  ├─ Events.h
│  │  ├─ Misc.h
│  │  ├─ MonsterEncounters.h
│  │  ├─ MonsterIds.h
│  │  ├─ MonsterMoves.h
│  │  ├─ MonsterStatusEffects.h
│  │  ├─ PlayerStatusEffects.h
│  │  ├─ Potions.h
│  │  ├─ RelicPools.h
│  │  ├─ Relics.h
│  │  ├─ Rooms.h
│  │  ├─ SaveFileMappings.h
│  │  └─ doc
│  │     ├─ Card_Related_doc.txt
│  │     ├─ Event_and _room_doc copy.txt
│  │     ├─ Monster_Related_doc.txt
│  │     ├─ Others_doc.txt
│  │     ├─ Relics_Related_doc.txt
│  │     ├─ Status_Related_doc.txt
│  │     └─ 增加内容.txt
│  ├─ data_structure
│  │  └─ fixed_list.h
│  ├─ game
│  │  ├─ Card.h
│  │  ├─ Deck.h
│  │  ├─ Game.h
│  │  ├─ GameContext.h
│  │  ├─ Map.h
│  │  ├─ Neow.h
│  │  ├─ Random.h
│  │  ├─ RelicContainer.h
│  │  ├─ Rewards.h
│  │  ├─ SaveFile.h
│  │  ├─ Shop.h
│  │  └─ doc
│  │     ├─ Random_save.txt
│  │     ├─ card_deck_reliccontainer.txt
│  │     ├─ game_map.txt
│  │     └─ neow_reward_shop.txt
│  ├─ sim
│  │  ├─ BattleSimulator.h
│  │  ├─ ConsoleSimulator.h
│  │  ├─ PrintHelpers.h
│  │  ├─ RandomAgent.h
│  │  ├─ SimHelpers.h
│  │  └─ search
│  │     ├─ Action.h
│  │     ├─ BattleScumSearcher2.h
│  │     ├─ ExpertKnowledge.h
│  │     ├─ GameAction.h
│  │     ├─ ScumSearchAgent2.h
│  │     └─ SimpleAgent.h
│  └─ sts_common.h
├─ json
│  ├─ .clang-format
│  ├─ .clang-tidy
│  ├─ .drone.yml
│  ├─ .travis.yml
│  ├─ CITATION.cff
│  ├─ CMakeLists.txt
│  ├─ CODE_OF_CONDUCT.md
│  ├─ ChangeLog.md
│  ├─ LICENSE.MIT
│  ├─ README.md
│  ├─ appveyor.yml
│  ├─ benchmarks
│  │  ├─ CMakeLists.txt
│  │  └─ src
│  │     └─ benchmarks.cpp
│  ├─ cmake
│  │  ├─ ci.cmake
│  │  ├─ config.cmake.in
│  │  ├─ download_test_data.cmake
│  │  ├─ nlohmann_jsonConfigVersion.cmake.in
│  │  └─ pkg-config.pc.in
│  ├─ doc
│  │  ├─ Doxyfile
│  │  ├─ avatars.png
│  │  ├─ css
│  │  │  ├─ mylayout.css
│  │  │  └─ mylayout_docset.css
│  │  ├─ docset
│  │  │  ├─ Info.plist
│  │  │  ├─ README.md
│  │  │  ├─ docSet.sql
│  │  │  ├─ docset.json
│  │  │  ├─ icon.png
│  │  │  └─ icon@2x.png
│  │  ├─ examples
│  │  │  ├─ README.cpp
│  │  │  ├─ README.link
│  │  │  ├─ README.output
│  │  │  ├─ accept__string.cpp
│  │  │  ├─ accept__string.link
│  │  │  ├─ accept__string.output
│  │  │  ├─ array.cpp
│  │  │  ├─ array.link
│  │  │  ├─ array.output
│  │  │  ├─ at__object_t_key_type.cpp
│  │  │  ├─ at__object_t_key_type.link
│  │  │  ├─ at__object_t_key_type.output
│  │  │  ├─ at__object_t_key_type_const.cpp
│  │  │  ├─ at__object_t_key_type_const.link
│  │  │  ├─ at__object_t_key_type_const.output
│  │  │  ├─ at__size_type.cpp
│  │  │  ├─ at__size_type.link
│  │  │  ├─ at__size_type.output
│  │  │  ├─ at__size_type_const.cpp
│  │  │  ├─ at__size_type_const.link
│  │  │  ├─ at__size_type_const.output
│  │  │  ├─ at_json_pointer.cpp
│  │  │  ├─ at_json_pointer.link
│  │  │  ├─ at_json_pointer.output
│  │  │  ├─ at_json_pointer_const.cpp
│  │  │  ├─ at_json_pointer_const.link
│  │  │  ├─ at_json_pointer_const.output
│  │  │  ├─ back.cpp
│  │  │  ├─ back.link
│  │  │  ├─ back.output
│  │  │  ├─ basic_json__CompatibleType.cpp
│  │  │  ├─ basic_json__CompatibleType.link
│  │  │  ├─ basic_json__CompatibleType.output
│  │  │  ├─ basic_json__InputIt_InputIt.cpp
│  │  │  ├─ basic_json__InputIt_InputIt.link
│  │  │  ├─ basic_json__InputIt_InputIt.output
│  │  │  ├─ basic_json__basic_json.cpp
│  │  │  ├─ basic_json__basic_json.link
│  │  │  ├─ basic_json__basic_json.output
│  │  │  ├─ basic_json__copyassignment.cpp
│  │  │  ├─ basic_json__copyassignment.link
│  │  │  ├─ basic_json__copyassignment.output
│  │  │  ├─ basic_json__list_init_t.cpp
│  │  │  ├─ basic_json__list_init_t.link
│  │  │  ├─ basic_json__list_init_t.output
│  │  │  ├─ basic_json__moveconstructor.cpp
│  │  │  ├─ basic_json__moveconstructor.link
│  │  │  ├─ basic_json__moveconstructor.output
│  │  │  ├─ basic_json__nullptr_t.cpp
│  │  │  ├─ basic_json__nullptr_t.link
│  │  │  ├─ basic_json__nullptr_t.output
│  │  │  ├─ basic_json__size_type_basic_json.cpp
│  │  │  ├─ basic_json__size_type_basic_json.link
│  │  │  ├─ basic_json__size_type_basic_json.output
│  │  │  ├─ basic_json__value.cpp
│  │  │  ├─ basic_json__value.link
│  │  │  ├─ basic_json__value.output
│  │  │  ├─ basic_json__value_ptr.cpp
│  │  │  ├─ basic_json__value_ptr.link
│  │  │  ├─ basic_json__value_ptr.output
│  │  │  ├─ basic_json__value_t.cpp
│  │  │  ├─ basic_json__value_t.link
│  │  │  ├─ basic_json__value_t.output
│  │  │  ├─ begin.cpp
│  │  │  ├─ begin.link
│  │  │  ├─ begin.output
│  │  │  ├─ cbegin.cpp
│  │  │  ├─ cbegin.link
│  │  │  ├─ cbegin.output
│  │  │  ├─ cend.cpp
│  │  │  ├─ cend.link
│  │  │  ├─ cend.output
│  │  │  ├─ clear.cpp
│  │  │  ├─ clear.link
│  │  │  ├─ clear.output
│  │  │  ├─ contains.cpp
│  │  │  ├─ contains.link
│  │  │  ├─ contains.output
│  │  │  ├─ contains_json_pointer.cpp
│  │  │  ├─ contains_json_pointer.link
│  │  │  ├─ contains_json_pointer.output
│  │  │  ├─ count.cpp
│  │  │  ├─ count.link
│  │  │  ├─ count.output
│  │  │  ├─ crbegin.cpp
│  │  │  ├─ crbegin.link
│  │  │  ├─ crbegin.output
│  │  │  ├─ crend.cpp
│  │  │  ├─ crend.link
│  │  │  ├─ crend.output
│  │  │  ├─ diagnostics_extended.cpp
│  │  │  ├─ diagnostics_extended.link
│  │  │  ├─ diagnostics_extended.output
│  │  │  ├─ diagnostics_standard.cpp
│  │  │  ├─ diagnostics_standard.link
│  │  │  ├─ diagnostics_standard.output
│  │  │  ├─ diff.cpp
│  │  │  ├─ diff.link
│  │  │  ├─ diff.output
│  │  │  ├─ dump.cpp
│  │  │  ├─ dump.link
│  │  │  ├─ dump.output
│  │  │  ├─ emplace.cpp
│  │  │  ├─ emplace.link
│  │  │  ├─ emplace.output
│  │  │  ├─ emplace_back.cpp
│  │  │  ├─ emplace_back.link
│  │  │  ├─ emplace_back.output
│  │  │  ├─ empty.cpp
│  │  │  ├─ empty.link
│  │  │  ├─ empty.output
│  │  │  ├─ end.cpp
│  │  │  ├─ end.link
│  │  │  ├─ end.output
│  │  │  ├─ erase__IteratorType.cpp
│  │  │  ├─ erase__IteratorType.link
│  │  │  ├─ erase__IteratorType.output
│  │  │  ├─ erase__IteratorType_IteratorType.cpp
│  │  │  ├─ erase__IteratorType_IteratorType.link
│  │  │  ├─ erase__IteratorType_IteratorType.output
│  │  │  ├─ erase__key_type.cpp
│  │  │  ├─ erase__key_type.link
│  │  │  ├─ erase__key_type.output
│  │  │  ├─ erase__size_type.cpp
│  │  │  ├─ erase__size_type.link
│  │  │  ├─ erase__size_type.output
│  │  │  ├─ exception.cpp
│  │  │  ├─ exception.link
│  │  │  ├─ exception.output
│  │  │  ├─ find__key_type.cpp
│  │  │  ├─ find__key_type.link
│  │  │  ├─ find__key_type.output
│  │  │  ├─ flatten.cpp
│  │  │  ├─ flatten.link
│  │  │  ├─ flatten.output
│  │  │  ├─ from_bson.cpp
│  │  │  ├─ from_bson.link
│  │  │  ├─ from_bson.output
│  │  │  ├─ from_cbor.cpp
│  │  │  ├─ from_cbor.link
│  │  │  ├─ from_cbor.output
│  │  │  ├─ from_msgpack.cpp
│  │  │  ├─ from_msgpack.link
│  │  │  ├─ from_msgpack.output
│  │  │  ├─ from_ubjson.cpp
│  │  │  ├─ from_ubjson.link
│  │  │  ├─ from_ubjson.output
│  │  │  ├─ front.cpp
│  │  │  ├─ front.link
│  │  │  ├─ front.output
│  │  │  ├─ get__PointerType.cpp
│  │  │  ├─ get__PointerType.link
│  │  │  ├─ get__PointerType.output
│  │  │  ├─ get__ValueType_const.cpp
│  │  │  ├─ get__ValueType_const.link
│  │  │  ├─ get__ValueType_const.output
│  │  │  ├─ get_ptr.cpp
│  │  │  ├─ get_ptr.link
│  │  │  ├─ get_ptr.output
│  │  │  ├─ get_ref.cpp
│  │  │  ├─ get_ref.link
│  │  │  ├─ get_ref.output
│  │  │  ├─ get_to.cpp
│  │  │  ├─ get_to.link
│  │  │  ├─ get_to.output
│  │  │  ├─ insert.cpp
│  │  │  ├─ insert.link
│  │  │  ├─ insert.output
│  │  │  ├─ insert__count.cpp
│  │  │  ├─ insert__count.link
│  │  │  ├─ insert__count.output
│  │  │  ├─ insert__ilist.cpp
│  │  │  ├─ insert__ilist.link
│  │  │  ├─ insert__ilist.output
│  │  │  ├─ insert__range.cpp
│  │  │  ├─ insert__range.link
│  │  │  ├─ insert__range.output
│  │  │  ├─ insert__range_object.cpp
│  │  │  ├─ insert__range_object.link
│  │  │  ├─ insert__range_object.output
│  │  │  ├─ invalid_iterator.cpp
│  │  │  ├─ invalid_iterator.link
│  │  │  ├─ invalid_iterator.output
│  │  │  ├─ is_array.cpp
│  │  │  ├─ is_array.link
│  │  │  ├─ is_array.output
│  │  │  ├─ is_binary.cpp
│  │  │  ├─ is_binary.link
│  │  │  ├─ is_binary.output
│  │  │  ├─ is_boolean.cpp
│  │  │  ├─ is_boolean.link
│  │  │  ├─ is_boolean.output
│  │  │  ├─ is_discarded.cpp
│  │  │  ├─ is_discarded.link
│  │  │  ├─ is_discarded.output
│  │  │  ├─ is_null.cpp
│  │  │  ├─ is_null.link
│  │  │  ├─ is_null.output
│  │  │  ├─ is_number.cpp
│  │  │  ├─ is_number.link
│  │  │  ├─ is_number.output
│  │  │  ├─ is_number_float.cpp
│  │  │  ├─ is_number_float.link
│  │  │  ├─ is_number_float.output
│  │  │  ├─ is_number_integer.cpp
│  │  │  ├─ is_number_integer.link
│  │  │  ├─ is_number_integer.output
│  │  │  ├─ is_number_unsigned.cpp
│  │  │  ├─ is_number_unsigned.link
│  │  │  ├─ is_number_unsigned.output
│  │  │  ├─ is_object.cpp
│  │  │  ├─ is_object.link
│  │  │  ├─ is_object.output
│  │  │  ├─ is_primitive.cpp
│  │  │  ├─ is_primitive.link
│  │  │  ├─ is_primitive.output
│  │  │  ├─ is_string.cpp
│  │  │  ├─ is_string.link
│  │  │  ├─ is_string.output
│  │  │  ├─ is_structured.cpp
│  │  │  ├─ is_structured.link
│  │  │  ├─ is_structured.output
│  │  │  ├─ items.cpp
│  │  │  ├─ items.link
│  │  │  ├─ items.output
│  │  │  ├─ iterator_wrapper.cpp
│  │  │  ├─ iterator_wrapper.link
│  │  │  ├─ iterator_wrapper.output
│  │  │  ├─ json_pointer.cpp
│  │  │  ├─ json_pointer.link
│  │  │  ├─ json_pointer.output
│  │  │  ├─ json_pointer__back.cpp
│  │  │  ├─ json_pointer__back.link
│  │  │  ├─ json_pointer__back.output
│  │  │  ├─ json_pointer__empty.cpp
│  │  │  ├─ json_pointer__empty.link
│  │  │  ├─ json_pointer__empty.output
│  │  │  ├─ json_pointer__operator_add.cpp
│  │  │  ├─ json_pointer__operator_add.link
│  │  │  ├─ json_pointer__operator_add.output
│  │  │  ├─ json_pointer__operator_add_binary.cpp
│  │  │  ├─ json_pointer__operator_add_binary.link
│  │  │  ├─ json_pointer__operator_add_binary.output
│  │  │  ├─ json_pointer__parent_pointer.cpp
│  │  │  ├─ json_pointer__parent_pointer.link
│  │  │  ├─ json_pointer__parent_pointer.output
│  │  │  ├─ json_pointer__pop_back.cpp
│  │  │  ├─ json_pointer__pop_back.link
│  │  │  ├─ json_pointer__pop_back.output
│  │  │  ├─ json_pointer__push_back.cpp
│  │  │  ├─ json_pointer__push_back.link
│  │  │  ├─ json_pointer__push_back.output
│  │  │  ├─ json_pointer__to_string.cpp
│  │  │  ├─ json_pointer__to_string.link
│  │  │  ├─ json_pointer__to_string.output
│  │  │  ├─ max_size.cpp
│  │  │  ├─ max_size.link
│  │  │  ├─ max_size.output
│  │  │  ├─ merge_patch.cpp
│  │  │  ├─ merge_patch.link
│  │  │  ├─ merge_patch.output
│  │  │  ├─ meta.cpp
│  │  │  ├─ meta.link
│  │  │  ├─ meta.output
│  │  │  ├─ object.cpp
│  │  │  ├─ object.link
│  │  │  ├─ object.output
│  │  │  ├─ operator__ValueType.cpp
│  │  │  ├─ operator__ValueType.link
│  │  │  ├─ operator__ValueType.output
│  │  │  ├─ operator__equal.cpp
│  │  │  ├─ operator__equal.link
│  │  │  ├─ operator__equal.output
│  │  │  ├─ operator__equal__nullptr_t.cpp
│  │  │  ├─ operator__equal__nullptr_t.link
│  │  │  ├─ operator__equal__nullptr_t.output
│  │  │  ├─ operator__greater.cpp
│  │  │  ├─ operator__greater.link
│  │  │  ├─ operator__greater.output
│  │  │  ├─ operator__greaterequal.cpp
│  │  │  ├─ operator__greaterequal.link
│  │  │  ├─ operator__greaterequal.output
│  │  │  ├─ operator__less.cpp
│  │  │  ├─ operator__less.link
│  │  │  ├─ operator__less.output
│  │  │  ├─ operator__lessequal.cpp
│  │  │  ├─ operator__lessequal.link
│  │  │  ├─ operator__lessequal.output
│  │  │  ├─ operator__notequal.cpp
│  │  │  ├─ operator__notequal.link
│  │  │  ├─ operator__notequal.output
│  │  │  ├─ operator__notequal__nullptr_t.cpp
│  │  │  ├─ operator__notequal__nullptr_t.link
│  │  │  ├─ operator__notequal__nullptr_t.output
│  │  │  ├─ operator__value_t.cpp
│  │  │  ├─ operator__value_t.link
│  │  │  ├─ operator__value_t.output
│  │  │  ├─ operator_deserialize.cpp
│  │  │  ├─ operator_deserialize.link
│  │  │  ├─ operator_deserialize.output
│  │  │  ├─ operator_serialize.cpp
│  │  │  ├─ operator_serialize.link
│  │  │  ├─ operator_serialize.output
│  │  │  ├─ operatorarray__key_type.cpp
│  │  │  ├─ operatorarray__key_type.link
│  │  │  ├─ operatorarray__key_type.output
│  │  │  ├─ operatorarray__key_type_const.cpp
│  │  │  ├─ operatorarray__key_type_const.link
│  │  │  ├─ operatorarray__key_type_const.output
│  │  │  ├─ operatorarray__size_type.cpp
│  │  │  ├─ operatorarray__size_type.link
│  │  │  ├─ operatorarray__size_type.output
│  │  │  ├─ operatorarray__size_type_const.cpp
│  │  │  ├─ operatorarray__size_type_const.link
│  │  │  ├─ operatorarray__size_type_const.output
│  │  │  ├─ operatorjson_pointer.cpp
│  │  │  ├─ operatorjson_pointer.link
│  │  │  ├─ operatorjson_pointer.output
│  │  │  ├─ operatorjson_pointer_const.cpp
│  │  │  ├─ operatorjson_pointer_const.link
│  │  │  ├─ operatorjson_pointer_const.output
│  │  │  ├─ other_error.cpp
│  │  │  ├─ other_error.link
│  │  │  ├─ other_error.output
│  │  │  ├─ out_of_range.cpp
│  │  │  ├─ out_of_range.link
│  │  │  ├─ out_of_range.output
│  │  │  ├─ parse__allow_exceptions.cpp
│  │  │  ├─ parse__allow_exceptions.link
│  │  │  ├─ parse__allow_exceptions.output
│  │  │  ├─ parse__array__parser_callback_t.cpp
│  │  │  ├─ parse__array__parser_callback_t.link
│  │  │  ├─ parse__array__parser_callback_t.output
│  │  │  ├─ parse__contiguouscontainer__parser_callback_t.cpp
│  │  │  ├─ parse__contiguouscontainer__parser_callback_t.link
│  │  │  ├─ parse__contiguouscontainer__parser_callback_t.output
│  │  │  ├─ parse__istream__parser_callback_t.cpp
│  │  │  ├─ parse__istream__parser_callback_t.link
│  │  │  ├─ parse__istream__parser_callback_t.output
│  │  │  ├─ parse__iteratortype__parser_callback_t.cpp
│  │  │  ├─ parse__iteratortype__parser_callback_t.link
│  │  │  ├─ parse__iteratortype__parser_callback_t.output
│  │  │  ├─ parse__string__parser_callback_t.cpp
│  │  │  ├─ parse__string__parser_callback_t.link
│  │  │  ├─ parse__string__parser_callback_t.output
│  │  │  ├─ parse_error.cpp
│  │  │  ├─ parse_error.link
│  │  │  ├─ parse_error.output
│  │  │  ├─ patch.cpp
│  │  │  ├─ patch.link
│  │  │  ├─ patch.output
│  │  │  ├─ push_back.cpp
│  │  │  ├─ push_back.link
│  │  │  ├─ push_back.output
│  │  │  ├─ push_back__initializer_list.cpp
│  │  │  ├─ push_back__initializer_list.link
│  │  │  ├─ push_back__initializer_list.output
│  │  │  ├─ push_back__object_t__value.cpp
│  │  │  ├─ push_back__object_t__value.link
│  │  │  ├─ push_back__object_t__value.output
│  │  │  ├─ rbegin.cpp
│  │  │  ├─ rbegin.link
│  │  │  ├─ rbegin.output
│  │  │  ├─ rend.cpp
│  │  │  ├─ rend.link
│  │  │  ├─ rend.output
│  │  │  ├─ sax_parse.cpp
│  │  │  ├─ sax_parse.link
│  │  │  ├─ sax_parse.output
│  │  │  ├─ size.cpp
│  │  │  ├─ size.link
│  │  │  ├─ size.output
│  │  │  ├─ swap__array_t.cpp
│  │  │  ├─ swap__array_t.link
│  │  │  ├─ swap__array_t.output
│  │  │  ├─ swap__binary_t.cpp
│  │  │  ├─ swap__binary_t.link
│  │  │  ├─ swap__binary_t.output
│  │  │  ├─ swap__object_t.cpp
│  │  │  ├─ swap__object_t.link
│  │  │  ├─ swap__object_t.output
│  │  │  ├─ swap__reference.cpp
│  │  │  ├─ swap__reference.link
│  │  │  ├─ swap__reference.output
│  │  │  ├─ swap__string_t.cpp
│  │  │  ├─ swap__string_t.link
│  │  │  ├─ swap__string_t.output
│  │  │  ├─ to_bson.cpp
│  │  │  ├─ to_bson.link
│  │  │  ├─ to_bson.output
│  │  │  ├─ to_cbor.cpp
│  │  │  ├─ to_cbor.link
│  │  │  ├─ to_cbor.output
│  │  │  ├─ to_msgpack.cpp
│  │  │  ├─ to_msgpack.link
│  │  │  ├─ to_msgpack.output
│  │  │  ├─ to_ubjson.cpp
│  │  │  ├─ to_ubjson.link
│  │  │  ├─ to_ubjson.output
│  │  │  ├─ type.cpp
│  │  │  ├─ type.link
│  │  │  ├─ type.output
│  │  │  ├─ type_error.cpp
│  │  │  ├─ type_error.link
│  │  │  ├─ type_error.output
│  │  │  ├─ type_name.cpp
│  │  │  ├─ type_name.link
│  │  │  ├─ type_name.output
│  │  │  ├─ unflatten.cpp
│  │  │  ├─ unflatten.link
│  │  │  ├─ unflatten.output
│  │  │  ├─ update.cpp
│  │  │  ├─ update.link
│  │  │  ├─ update.output
│  │  │  ├─ update__range.cpp
│  │  │  ├─ update__range.link
│  │  │  └─ update__range.output
│  │  ├─ images
│  │  │  ├─ callback_events.png
│  │  │  ├─ json_syntax_number.png
│  │  │  ├─ range-begin-end.svg
│  │  │  └─ range-rbegin-rend.svg
│  │  ├─ index.md
│  │  ├─ json.gif
│  │  ├─ mkdocs
│  │  │  ├─ docs
│  │  │  │  ├─ api
│  │  │  │  │  ├─ adl_serializer.md
│  │  │  │  │  ├─ basic_json
│  │  │  │  │  │  ├─ accept.md
│  │  │  │  │  │  ├─ array.md
│  │  │  │  │  │  ├─ array_t.md
│  │  │  │  │  │  ├─ at.md
│  │  │  │  │  │  ├─ back.md
│  │  │  │  │  │  ├─ basic_json.md
│  │  │  │  │  │  ├─ begin.md
│  │  │  │  │  │  ├─ binary.md
│  │  │  │  │  │  ├─ binary_t.md
│  │  │  │  │  │  ├─ boolean_t.md
│  │  │  │  │  │  ├─ cbegin.md
│  │  │  │  │  │  ├─ cbor_tag_handler_t.md
│  │  │  │  │  │  ├─ cend.md
│  │  │  │  │  │  ├─ clear.md
│  │  │  │  │  │  ├─ contains.md
│  │  │  │  │  │  ├─ count.md
│  │  │  │  │  │  ├─ crbegin.md
│  │  │  │  │  │  ├─ crend.md
│  │  │  │  │  │  ├─ diff.md
│  │  │  │  │  │  ├─ dump.md
│  │  │  │  │  │  ├─ emplace.md
│  │  │  │  │  │  ├─ emplace_back.md
│  │  │  │  │  │  ├─ empty.md
│  │  │  │  │  │  ├─ end.md
│  │  │  │  │  │  ├─ erase.md
│  │  │  │  │  │  ├─ error_handler_t.md
│  │  │  │  │  │  ├─ exception.md
│  │  │  │  │  │  ├─ find.md
│  │  │  │  │  │  ├─ flatten.md
│  │  │  │  │  │  ├─ from_bson.md
│  │  │  │  │  │  ├─ from_cbor.md
│  │  │  │  │  │  ├─ from_msgpack.md
│  │  │  │  │  │  ├─ from_ubjson.md
│  │  │  │  │  │  ├─ front.md
│  │  │  │  │  │  ├─ get.md
│  │  │  │  │  │  ├─ get_allocator.md
│  │  │  │  │  │  ├─ get_binary.md
│  │  │  │  │  │  ├─ get_ptr.md
│  │  │  │  │  │  ├─ get_ref.md
│  │  │  │  │  │  ├─ get_to.md
│  │  │  │  │  │  ├─ index.md
│  │  │  │  │  │  ├─ input_format_t.md
│  │  │  │  │  │  ├─ insert.md
│  │  │  │  │  │  ├─ invalid_iterator.md
│  │  │  │  │  │  ├─ is_array.md
│  │  │  │  │  │  ├─ is_binary.md
│  │  │  │  │  │  ├─ is_boolean.md
│  │  │  │  │  │  ├─ is_discarded.md
│  │  │  │  │  │  ├─ is_null.md
│  │  │  │  │  │  ├─ is_number.md
│  │  │  │  │  │  ├─ is_number_float.md
│  │  │  │  │  │  ├─ is_number_integer.md
│  │  │  │  │  │  ├─ is_number_unsigned.md
│  │  │  │  │  │  ├─ is_object.md
│  │  │  │  │  │  ├─ is_primitive.md
│  │  │  │  │  │  ├─ is_string.md
│  │  │  │  │  │  ├─ is_structured.md
│  │  │  │  │  │  ├─ items.md
│  │  │  │  │  │  ├─ json_serializer.md
│  │  │  │  │  │  ├─ max_size.md
│  │  │  │  │  │  ├─ merge_patch.md
│  │  │  │  │  │  ├─ meta.md
│  │  │  │  │  │  ├─ number_float_t.md
│  │  │  │  │  │  ├─ number_integer_t.md
│  │  │  │  │  │  ├─ number_unsigned_t.md
│  │  │  │  │  │  ├─ object.md
│  │  │  │  │  │  ├─ object_comparator_t.md
│  │  │  │  │  │  ├─ object_t.md
│  │  │  │  │  │  ├─ operator+=.md
│  │  │  │  │  │  ├─ operator=.md
│  │  │  │  │  │  ├─ operator[].md
│  │  │  │  │  │  ├─ operator_ValueType.md
│  │  │  │  │  │  ├─ operator_eq.md
│  │  │  │  │  │  ├─ operator_ge.md
│  │  │  │  │  │  ├─ operator_gt.md
│  │  │  │  │  │  ├─ operator_le.md
│  │  │  │  │  │  ├─ operator_literal_json.md
│  │  │  │  │  │  ├─ operator_literal_json_pointer.md
│  │  │  │  │  │  ├─ operator_lt.md
│  │  │  │  │  │  ├─ operator_ne.md
│  │  │  │  │  │  ├─ operator_value_t.md
│  │  │  │  │  │  ├─ other_error.md
│  │  │  │  │  │  ├─ out_of_range.md
│  │  │  │  │  │  ├─ parse.md
│  │  │  │  │  │  ├─ parse_error.md
│  │  │  │  │  │  ├─ parse_event_t.md
│  │  │  │  │  │  ├─ parser_callback_t.md
│  │  │  │  │  │  ├─ patch.md
│  │  │  │  │  │  ├─ push_back.md
│  │  │  │  │  │  ├─ rbegin.md
│  │  │  │  │  │  ├─ rend.md
│  │  │  │  │  │  ├─ sax_parse.md
│  │  │  │  │  │  ├─ size.md
│  │  │  │  │  │  ├─ string_t.md
│  │  │  │  │  │  ├─ to_bson.md
│  │  │  │  │  │  ├─ to_cbor.md
│  │  │  │  │  │  ├─ to_msgpack.md
│  │  │  │  │  │  ├─ to_ubjson.md
│  │  │  │  │  │  ├─ type.md
│  │  │  │  │  │  ├─ type_error.md
│  │  │  │  │  │  ├─ type_name.md
│  │  │  │  │  │  ├─ unflatten.md
│  │  │  │  │  │  ├─ update.md
│  │  │  │  │  │  ├─ value.md
│  │  │  │  │  │  └─ value_t.md
│  │  │  │  │  ├─ json.md
│  │  │  │  │  ├─ json_pointer.md
│  │  │  │  │  ├─ ordered_json.md
│  │  │  │  │  └─ ordered_map.md
│  │  │  │  ├─ features
│  │  │  │  │  ├─ arbitrary_types.md
│  │  │  │  │  ├─ binary_formats
│  │  │  │  │  │  ├─ bson.md
│  │  │  │  │  │  ├─ cbor.md
│  │  │  │  │  │  ├─ index.md
│  │  │  │  │  │  ├─ messagepack.md
│  │  │  │  │  │  └─ ubjson.md
│  │  │  │  │  ├─ binary_values.md
│  │  │  │  │  ├─ comments.md
│  │  │  │  │  ├─ element_access
│  │  │  │  │  │  ├─ checked_access.md
│  │  │  │  │  │  ├─ default_value.md
│  │  │  │  │  │  ├─ index.md
│  │  │  │  │  │  └─ unchecked_access.md
│  │  │  │  │  ├─ enum_conversion.md
│  │  │  │  │  ├─ iterators.md
│  │  │  │  │  ├─ json_patch.md
│  │  │  │  │  ├─ json_pointer.md
│  │  │  │  │  ├─ macros.md
│  │  │  │  │  ├─ merge_patch.md
│  │  │  │  │  ├─ object_order.md
│  │  │  │  │  ├─ parsing
│  │  │  │  │  │  ├─ index.md
│  │  │  │  │  │  ├─ parse_exceptions.md
│  │  │  │  │  │  ├─ parser_callbacks.md
│  │  │  │  │  │  └─ sax_interface.md
│  │  │  │  │  └─ types
│  │  │  │  │     ├─ index.md
│  │  │  │  │     └─ number_handling.md
│  │  │  │  ├─ home
│  │  │  │  │  ├─ code_of_conduct.md
│  │  │  │  │  ├─ design_goals.md
│  │  │  │  │  ├─ exceptions.md
│  │  │  │  │  ├─ faq.md
│  │  │  │  │  ├─ license.md
│  │  │  │  │  ├─ releases.md
│  │  │  │  │  └─ sponsors.md
│  │  │  │  ├─ hooks.py
│  │  │  │  ├─ index.md
│  │  │  │  └─ integration
│  │  │  │     ├─ cmake.md
│  │  │  │     ├─ conan
│  │  │  │     │  ├─ CMakeLists.txt
│  │  │  │     │  ├─ Conanfile.txt
│  │  │  │     │  └─ example.cpp
│  │  │  │     ├─ example.cpp
│  │  │  │     ├─ index.md
│  │  │  │     ├─ package_managers.md
│  │  │  │     ├─ pkg-config.md
│  │  │  │     └─ vcpkg
│  │  │  │        ├─ CMakeLists.txt
│  │  │  │        └─ example.cpp
│  │  │  ├─ mkdocs.yml
│  │  │  └─ requirements.txt
│  │  ├─ scripts
│  │  │  ├─ git-update-ghpages
│  │  │  └─ send_to_wandbox.py
│  │  └─ usages
│  │     ├─ ios.png
│  │     └─ macos.png
│  ├─ include
│  │  └─ nlohmann
│  │     ├─ adl_serializer.hpp
│  │     ├─ byte_container_with_subtype.hpp
│  │     ├─ detail
│  │     │  ├─ conversions
│  │     │  │  ├─ from_json.hpp
│  │     │  │  ├─ to_chars.hpp
│  │     │  │  └─ to_json.hpp
│  │     │  ├─ exceptions.hpp
│  │     │  ├─ hash.hpp
│  │     │  ├─ input
│  │     │  │  ├─ binary_reader.hpp
│  │     │  │  ├─ input_adapters.hpp
│  │     │  │  ├─ json_sax.hpp
│  │     │  │  ├─ lexer.hpp
│  │     │  │  ├─ parser.hpp
│  │     │  │  └─ position_t.hpp
│  │     │  ├─ iterators
│  │     │  │  ├─ internal_iterator.hpp
│  │     │  │  ├─ iter_impl.hpp
│  │     │  │  ├─ iteration_proxy.hpp
│  │     │  │  ├─ iterator_traits.hpp
│  │     │  │  ├─ json_reverse_iterator.hpp
│  │     │  │  └─ primitive_iterator.hpp
│  │     │  ├─ json_pointer.hpp
│  │     │  ├─ json_ref.hpp
│  │     │  ├─ macro_scope.hpp
│  │     │  ├─ macro_unscope.hpp
│  │     │  ├─ meta
│  │     │  │  ├─ cpp_future.hpp
│  │     │  │  ├─ detected.hpp
│  │     │  │  ├─ identity_tag.hpp
│  │     │  │  ├─ is_sax.hpp
│  │     │  │  ├─ type_traits.hpp
│  │     │  │  └─ void_t.hpp
│  │     │  ├─ output
│  │     │  │  ├─ binary_writer.hpp
│  │     │  │  ├─ output_adapters.hpp
│  │     │  │  └─ serializer.hpp
│  │     │  ├─ string_escape.hpp
│  │     │  └─ value_t.hpp
│  │     ├─ json.hpp
│  │     ├─ json_fwd.hpp
│  │     ├─ ordered_map.hpp
│  │     └─ thirdparty
│  │        └─ hedley
│  │           ├─ hedley.hpp
│  │           └─ hedley_undef.hpp
│  ├─ meson.build
│  ├─ nlohmann_json.natvis
│  ├─ single_include
│  │  └─ nlohmann
│  │     └─ json.hpp
│  ├─ test
│  │  ├─ CMakeLists.txt
│  │  ├─ cmake_add_subdirectory
│  │  │  ├─ CMakeLists.txt
│  │  │  └─ project
│  │  │     ├─ CMakeLists.txt
│  │  │     └─ main.cpp
│  │  ├─ cmake_fetch_content
│  │  │  ├─ CMakeLists.txt
│  │  │  └─ project
│  │  │     ├─ CMakeLists.txt
│  │  │     └─ main.cpp
│  │  ├─ cmake_import
│  │  │  ├─ CMakeLists.txt
│  │  │  └─ project
│  │  │     ├─ CMakeLists.txt
│  │  │     └─ main.cpp
│  │  ├─ cmake_import_minver
│  │  │  ├─ CMakeLists.txt
│  │  │  └─ project
│  │  │     ├─ CMakeLists.txt
│  │  │     └─ main.cpp
│  │  ├─ cmake_target_include_directories
│  │  │  ├─ CMakeLists.txt
│  │  │  └─ project
│  │  │     ├─ Bar.cpp
│  │  │     ├─ Bar.hpp
│  │  │     ├─ CMakeLists.txt
│  │  │     ├─ Foo.cpp
│  │  │     ├─ Foo.hpp
│  │  │     └─ main.cpp
│  │  ├─ reports
│  │  │  ├─ 2016-08-29-fuzz
│  │  │  │  ├─ exec_speed.png
│  │  │  │  ├─ fuzz.tiff
│  │  │  │  ├─ high_freq.png
│  │  │  │  ├─ index.html
│  │  │  │  └─ low_freq.png
│  │  │  ├─ 2016-09-09-nativejson_benchmark
│  │  │  │  ├─ README.md
│  │  │  │  ├─ conformance_Nlohmann (C++11).md
│  │  │  │  ├─ conformance_overall_Result.png
│  │  │  │  ├─ performance_Corei7-4980HQ@2.80GHz_mac64_clang7.0_1._Parse_Memory_(byte).png
│  │  │  │  ├─ performance_Corei7-4980HQ@2.80GHz_mac64_clang7.0_1._Parse_Time_(ms).png
│  │  │  │  ├─ performance_Corei7-4980HQ@2.80GHz_mac64_clang7.0_2._Stringify_Time_(ms).png
│  │  │  │  ├─ performance_Corei7-4980HQ@2.80GHz_mac64_clang7.0_3._Prettify_Time_(ms).png
│  │  │  │  └─ performance_Corei7-4980HQ@2.80GHz_mac64_clang7.0_7._Code_size_FileSize_(byte).png
│  │  │  └─ 2016-10-02-fuzz
│  │  │     ├─ exec_speed.png
│  │  │     ├─ fuzz.tiff
│  │  │     ├─ high_freq.png
│  │  │     ├─ index.html
│  │  │     └─ low_freq.png
│  │  ├─ src
│  │  │  ├─ fuzzer-driver_afl.cpp
│  │  │  ├─ fuzzer-parse_bson.cpp
│  │  │  ├─ fuzzer-parse_cbor.cpp
│  │  │  ├─ fuzzer-parse_json.cpp
│  │  │  ├─ fuzzer-parse_msgpack.cpp
│  │  │  ├─ fuzzer-parse_ubjson.cpp
│  │  │  ├─ test_utils.hpp
│  │  │  ├─ unit-algorithms.cpp
│  │  │  ├─ unit-allocator.cpp
│  │  │  ├─ unit-alt-string.cpp
│  │  │  ├─ unit-assert_macro.cpp
│  │  │  ├─ unit-bson.cpp
│  │  │  ├─ unit-byte_container_with_subtype.cpp
│  │  │  ├─ unit-capacity.cpp
│  │  │  ├─ unit-cbor.cpp
│  │  │  ├─ unit-class_const_iterator.cpp
│  │  │  ├─ unit-class_iterator.cpp
│  │  │  ├─ unit-class_lexer.cpp
│  │  │  ├─ unit-class_parser.cpp
│  │  │  ├─ unit-comparison.cpp
│  │  │  ├─ unit-concepts.cpp
│  │  │  ├─ unit-constructor1.cpp
│  │  │  ├─ unit-constructor2.cpp
│  │  │  ├─ unit-convenience.cpp
│  │  │  ├─ unit-conversions.cpp
│  │  │  ├─ unit-deserialization.cpp
│  │  │  ├─ unit-diagnostics.cpp
│  │  │  ├─ unit-disabled_exceptions.cpp
│  │  │  ├─ unit-element_access1.cpp
│  │  │  ├─ unit-element_access2.cpp
│  │  │  ├─ unit-hash.cpp
│  │  │  ├─ unit-inspection.cpp
│  │  │  ├─ unit-items.cpp
│  │  │  ├─ unit-iterators1.cpp
│  │  │  ├─ unit-iterators2.cpp
│  │  │  ├─ unit-json_patch.cpp
│  │  │  ├─ unit-json_pointer.cpp
│  │  │  ├─ unit-large_json.cpp
│  │  │  ├─ unit-merge_patch.cpp
│  │  │  ├─ unit-meta.cpp
│  │  │  ├─ unit-modifiers.cpp
│  │  │  ├─ unit-msgpack.cpp
│  │  │  ├─ unit-noexcept.cpp
│  │  │  ├─ unit-ordered_json.cpp
│  │  │  ├─ unit-ordered_map.cpp
│  │  │  ├─ unit-pointer_access.cpp
│  │  │  ├─ unit-readme.cpp
│  │  │  ├─ unit-reference_access.cpp
│  │  │  ├─ unit-regression1.cpp
│  │  │  ├─ unit-regression2.cpp
│  │  │  ├─ unit-serialization.cpp
│  │  │  ├─ unit-testsuites.cpp
│  │  │  ├─ unit-to_chars.cpp
│  │  │  ├─ unit-ubjson.cpp
│  │  │  ├─ unit-udt.cpp
│  │  │  ├─ unit-udt_macro.cpp
│  │  │  ├─ unit-unicode1.cpp
│  │  │  ├─ unit-unicode2.cpp
│  │  │  ├─ unit-unicode3.cpp
│  │  │  ├─ unit-unicode4.cpp
│  │  │  ├─ unit-unicode5.cpp
│  │  │  ├─ unit-user_defined_input.cpp
│  │  │  ├─ unit-wstring.cpp
│  │  │  └─ unit.cpp
│  │  └─ thirdparty
│  │     ├─ Fuzzer
│  │     │  ├─ CMakeLists.txt
│  │     │  ├─ FuzzerCorpus.h
│  │     │  ├─ FuzzerCrossOver.cpp
│  │     │  ├─ FuzzerDefs.h
│  │     │  ├─ FuzzerDictionary.h
│  │     │  ├─ FuzzerDriver.cpp
│  │     │  ├─ FuzzerExtFunctions.def
│  │     │  ├─ FuzzerExtFunctions.h
│  │     │  ├─ FuzzerExtFunctionsDlsym.cpp
│  │     │  ├─ FuzzerExtFunctionsWeak.cpp
│  │     │  ├─ FuzzerExtFunctionsWeakAlias.cpp
│  │     │  ├─ FuzzerFlags.def
│  │     │  ├─ FuzzerIO.cpp
│  │     │  ├─ FuzzerIO.h
│  │     │  ├─ FuzzerIOPosix.cpp
│  │     │  ├─ FuzzerIOWindows.cpp
│  │     │  ├─ FuzzerInterface.h
│  │     │  ├─ FuzzerInternal.h
│  │     │  ├─ FuzzerLoop.cpp
│  │     │  ├─ FuzzerMain.cpp
│  │     │  ├─ FuzzerMerge.cpp
│  │     │  ├─ FuzzerMerge.h
│  │     │  ├─ FuzzerMutate.cpp
│  │     │  ├─ FuzzerMutate.h
│  │     │  ├─ FuzzerOptions.h
│  │     │  ├─ FuzzerRandom.h
│  │     │  ├─ FuzzerSHA1.cpp
│  │     │  ├─ FuzzerSHA1.h
│  │     │  ├─ FuzzerTracePC.cpp
│  │     │  ├─ FuzzerTracePC.h
│  │     │  ├─ FuzzerTraceState.cpp
│  │     │  ├─ FuzzerUtil.cpp
│  │     │  ├─ FuzzerUtil.h
│  │     │  ├─ FuzzerUtilDarwin.cpp
│  │     │  ├─ FuzzerUtilLinux.cpp
│  │     │  ├─ FuzzerUtilPosix.cpp
│  │     │  ├─ FuzzerUtilWindows.cpp
│  │     │  ├─ FuzzerValueBitMap.h
│  │     │  ├─ README.txt
│  │     │  ├─ afl
│  │     │  │  └─ afl_driver.cpp
│  │     │  ├─ build.sh
│  │     │  ├─ cxx.dict
│  │     │  ├─ standalone
│  │     │  │  └─ StandaloneFuzzTargetMain.c
│  │     │  └─ test
│  │     │     ├─ AFLDriverTest.cpp
│  │     │     ├─ AbsNegAndConstant64Test.cpp
│  │     │     ├─ AbsNegAndConstantTest.cpp
│  │     │     ├─ AccumulateAllocationsTest.cpp
│  │     │     ├─ BufferOverflowOnInput.cpp
│  │     │     ├─ CMakeLists.txt
│  │     │     ├─ CallerCalleeTest.cpp
│  │     │     ├─ CounterTest.cpp
│  │     │     ├─ CustomCrossOverTest.cpp
│  │     │     ├─ CustomMutatorTest.cpp
│  │     │     ├─ DSO1.cpp
│  │     │     ├─ DSO2.cpp
│  │     │     ├─ DSOTestExtra.cpp
│  │     │     ├─ DSOTestMain.cpp
│  │     │     ├─ DivTest.cpp
│  │     │     ├─ EmptyTest.cpp
│  │     │     ├─ FourIndependentBranchesTest.cpp
│  │     │     ├─ FullCoverageSetTest.cpp
│  │     │     ├─ FuzzerUnittest.cpp
│  │     │     ├─ InitializeTest.cpp
│  │     │     ├─ LeakTest.cpp
│  │     │     ├─ LeakTimeoutTest.cpp
│  │     │     ├─ LoadTest.cpp
│  │     │     ├─ MemcmpTest.cpp
│  │     │     ├─ NthRunCrashTest.cpp
│  │     │     ├─ NullDerefOnEmptyTest.cpp
│  │     │     ├─ NullDerefTest.cpp
│  │     │     ├─ OneHugeAllocTest.cpp
│  │     │     ├─ OutOfMemorySingleLargeMallocTest.cpp
│  │     │     ├─ OutOfMemoryTest.cpp
│  │     │     ├─ RepeatedBytesTest.cpp
│  │     │     ├─ RepeatedMemcmp.cpp
│  │     │     ├─ ShrinkControlFlowTest.cpp
│  │     │     ├─ ShrinkValueProfileTest.cpp
│  │     │     ├─ SignedIntOverflowTest.cpp
│  │     │     ├─ SimpleCmpTest.cpp
│  │     │     ├─ SimpleDictionaryTest.cpp
│  │     │     ├─ SimpleHashTest.cpp
│  │     │     ├─ SimpleTest.cpp
│  │     │     ├─ SimpleThreadedTest.cpp
│  │     │     ├─ SingleMemcmpTest.cpp
│  │     │     ├─ SingleStrcmpTest.cpp
│  │     │     ├─ SingleStrncmpTest.cpp
│  │     │     ├─ SpamyTest.cpp
│  │     │     ├─ StrcmpTest.cpp
│  │     │     ├─ StrncmpOOBTest.cpp
│  │     │     ├─ StrncmpTest.cpp
│  │     │     ├─ StrstrTest.cpp
│  │     │     ├─ SwapCmpTest.cpp
│  │     │     ├─ Switch2Test.cpp
│  │     │     ├─ SwitchTest.cpp
│  │     │     ├─ ThreadedLeakTest.cpp
│  │     │     ├─ ThreadedTest.cpp
│  │     │     ├─ TimeoutEmptyTest.cpp
│  │     │     ├─ TimeoutTest.cpp
│  │     │     ├─ TraceMallocTest.cpp
│  │     │     ├─ UninstrumentedTest.cpp
│  │     │     ├─ afl-driver-extra-stats.test
│  │     │     ├─ afl-driver-stderr.test
│  │     │     ├─ caller-callee.test
│  │     │     ├─ coverage.test
│  │     │     ├─ dict1.txt
│  │     │     ├─ dump_coverage.test
│  │     │     ├─ fuzzer-customcrossover.test
│  │     │     ├─ fuzzer-custommutator.test
│  │     │     ├─ fuzzer-dict.test
│  │     │     ├─ fuzzer-dirs.test
│  │     │     ├─ fuzzer-fdmask.test
│  │     │     ├─ fuzzer-finalstats.test
│  │     │     ├─ fuzzer-flags.test
│  │     │     ├─ fuzzer-jobs.test
│  │     │     ├─ fuzzer-leak.test
│  │     │     ├─ fuzzer-oom-with-profile.test
│  │     │     ├─ fuzzer-oom.test
│  │     │     ├─ fuzzer-printcovpcs.test
│  │     │     ├─ fuzzer-runs.test
│  │     │     ├─ fuzzer-seed.test
│  │     │     ├─ fuzzer-segv.test
│  │     │     ├─ fuzzer-singleinputs.test
│  │     │     ├─ fuzzer-threaded.test
│  │     │     ├─ fuzzer-timeout.test
│  │     │     ├─ fuzzer-traces-hooks.test
│  │     │     ├─ fuzzer-ubsan.test
│  │     │     ├─ fuzzer.test
│  │     │     ├─ hi.txt
│  │     │     ├─ lit.cfg
│  │     │     ├─ lit.site.cfg.in
│  │     │     ├─ merge.test
│  │     │     ├─ minimize_crash.test
│  │     │     ├─ no-coverage
│  │     │     │  └─ CMakeLists.txt
│  │     │     ├─ repeated-bytes.test
│  │     │     ├─ shrink.test
│  │     │     ├─ simple-cmp.test
│  │     │     ├─ standalone.test
│  │     │     ├─ swap-cmp.test
│  │     │     ├─ trace-malloc.test
│  │     │     ├─ ubsan
│  │     │     │  └─ CMakeLists.txt
│  │     │     ├─ ulimit.test
│  │     │     ├─ uninstrumented
│  │     │     │  └─ CMakeLists.txt
│  │     │     ├─ unit
│  │     │     │  ├─ lit.cfg
│  │     │     │  └─ lit.site.cfg.in
│  │     │     ├─ value-profile-cmp.test
│  │     │     ├─ value-profile-cmp2.test
│  │     │     ├─ value-profile-cmp3.test
│  │     │     ├─ value-profile-cmp4.test
│  │     │     ├─ value-profile-div.test
│  │     │     ├─ value-profile-load.test
│  │     │     ├─ value-profile-mem.test
│  │     │     ├─ value-profile-set.test
│  │     │     ├─ value-profile-strcmp.test
│  │     │     ├─ value-profile-strncmp.test
│  │     │     └─ value-profile-switch.test
│  │     ├─ doctest
│  │     │  ├─ LICENSE.txt
│  │     │  ├─ doctest.h
│  │     │  └─ doctest_compatibility.h
│  │     ├─ fifo_map
│  │     │  ├─ LICENSE.MIT
│  │     │  └─ fifo_map.hpp
│  │     └─ imapdl
│  │        ├─ filterbr.py
│  │        └─ gpl-3.0.txt
│  ├─ third_party
│  │  ├─ amalgamate
│  │  │  ├─ CHANGES.md
│  │  │  ├─ LICENSE.md
│  │  │  ├─ README.md
│  │  │  ├─ amalgamate.py
│  │  │  └─ config.json
│  │  ├─ cpplint
│  │  │  ├─ LICENSE
│  │  │  ├─ README.rst
│  │  │  ├─ cpplint.py
│  │  │  └─ update.sh
│  │  ├─ gdb_pretty_printer
│  │  │  ├─ README.md
│  │  │  └─ nlohmann-json.py
│  │  └─ macro_builder
│  │     └─ main.cpp
│  └─ wsjcpp.yml
├─ pybind11
│  ├─ .appveyor.yml
│  ├─ .clang-format
│  ├─ .clang-tidy
│  ├─ .cmake-format.yaml
│  ├─ .codespell-ignore-lines
│  ├─ .pre-commit-config.yaml
│  ├─ .readthedocs.yml
│  ├─ CMakeLists.txt
│  ├─ LICENSE
│  ├─ README.rst
│  ├─ SECURITY.md
│  ├─ docs
│  │  ├─ Doxyfile
│  │  ├─ _static
│  │  │  └─ css
│  │  │     └─ custom.css
│  │  ├─ advanced
│  │  │  ├─ cast
│  │  │  │  ├─ chrono.rst
│  │  │  │  ├─ custom.rst
│  │  │  │  ├─ eigen.rst
│  │  │  │  ├─ functional.rst
│  │  │  │  ├─ index.rst
│  │  │  │  ├─ overview.rst
│  │  │  │  ├─ stl.rst
│  │  │  │  └─ strings.rst
│  │  │  ├─ classes.rst
│  │  │  ├─ embedding.rst
│  │  │  ├─ exceptions.rst
│  │  │  ├─ functions.rst
│  │  │  ├─ misc.rst
│  │  │  ├─ pycpp
│  │  │  │  ├─ index.rst
│  │  │  │  ├─ numpy.rst
│  │  │  │  ├─ object.rst
│  │  │  │  └─ utilities.rst
│  │  │  └─ smart_ptrs.rst
│  │  ├─ basics.rst
│  │  ├─ benchmark.py
│  │  ├─ benchmark.rst
│  │  ├─ changelog.rst
│  │  ├─ classes.rst
│  │  ├─ cmake
│  │  │  └─ index.rst
│  │  ├─ compiling.rst
│  │  ├─ conf.py
│  │  ├─ faq.rst
│  │  ├─ index.rst
│  │  ├─ installing.rst
│  │  ├─ limitations.rst
│  │  ├─ pybind11-logo.png
│  │  ├─ pybind11_vs_boost_python1.png
│  │  ├─ pybind11_vs_boost_python1.svg
│  │  ├─ pybind11_vs_boost_python2.png
│  │  ├─ pybind11_vs_boost_python2.svg
│  │  ├─ reference.rst
│  │  ├─ release.rst
│  │  ├─ requirements.txt
│  │  └─ upgrade.rst
│  ├─ include
│  │  └─ pybind11
│  │     ├─ attr.h
│  │     ├─ buffer_info.h
│  │     ├─ cast.h
│  │     ├─ chrono.h
│  │     ├─ common.h
│  │     ├─ complex.h
│  │     ├─ detail
│  │     │  ├─ class.h
│  │     │  ├─ common.h
│  │     │  ├─ descr.h
│  │     │  ├─ init.h
│  │     │  ├─ internals.h
│  │     │  ├─ type_caster_base.h
│  │     │  └─ typeid.h
│  │     ├─ eigen
│  │     │  ├─ common.h
│  │     │  ├─ matrix.h
│  │     │  └─ tensor.h
│  │     ├─ eigen.h
│  │     ├─ embed.h
│  │     ├─ eval.h
│  │     ├─ functional.h
│  │     ├─ gil.h
│  │     ├─ gil_safe_call_once.h
│  │     ├─ iostream.h
│  │     ├─ numpy.h
│  │     ├─ operators.h
│  │     ├─ options.h
│  │     ├─ pybind11.h
│  │     ├─ pytypes.h
│  │     ├─ stl
│  │     │  └─ filesystem.h
│  │     ├─ stl.h
│  │     ├─ stl_bind.h
│  │     ├─ type_caster_pyobject_ptr.h
│  │     └─ typing.h
│  ├─ noxfile.py
│  ├─ pybind11
│  │  ├─ __init__.py
│  │  ├─ __main__.py
│  │  ├─ _version.py
│  │  ├─ commands.py
│  │  ├─ py.typed
│  │  └─ setup_helpers.py
│  ├─ pyproject.toml
│  ├─ setup.cfg
│  ├─ setup.py
│  ├─ tests
│  │  ├─ CMakeLists.txt
│  │  ├─ conftest.py
│  │  ├─ constructor_stats.h
│  │  ├─ cross_module_gil_utils.cpp
│  │  ├─ cross_module_interleaved_error_already_set.cpp
│  │  ├─ eigen_tensor_avoid_stl_array.cpp
│  │  ├─ env.py
│  │  ├─ extra_python_package
│  │  │  ├─ pytest.ini
│  │  │  └─ test_files.py
│  │  ├─ extra_setuptools
│  │  │  ├─ pytest.ini
│  │  │  └─ test_setuphelper.py
│  │  ├─ local_bindings.h
│  │  ├─ object.h
│  │  ├─ pybind11_cross_module_tests.cpp
│  │  ├─ pybind11_tests.cpp
│  │  ├─ pybind11_tests.h
│  │  ├─ pytest.ini
│  │  ├─ requirements.txt
│  │  ├─ test_async.cpp
│  │  ├─ test_async.py
│  │  ├─ test_buffers.cpp
│  │  ├─ test_buffers.py
│  │  ├─ test_builtin_casters.cpp
│  │  ├─ test_builtin_casters.py
│  │  ├─ test_call_policies.cpp
│  │  ├─ test_call_policies.py
│  │  ├─ test_callbacks.cpp
│  │  ├─ test_callbacks.py
│  │  ├─ test_chrono.cpp
│  │  ├─ test_chrono.py
│  │  ├─ test_class.cpp
│  │  ├─ test_class.py
│  │  ├─ test_cmake_build
│  │  │  ├─ CMakeLists.txt
│  │  │  ├─ embed.cpp
│  │  │  ├─ installed_embed
│  │  │  │  └─ CMakeLists.txt
│  │  │  ├─ installed_function
│  │  │  │  └─ CMakeLists.txt
│  │  │  ├─ installed_target
│  │  │  │  └─ CMakeLists.txt
│  │  │  ├─ main.cpp
│  │  │  ├─ subdirectory_embed
│  │  │  │  └─ CMakeLists.txt
│  │  │  ├─ subdirectory_function
│  │  │  │  └─ CMakeLists.txt
│  │  │  ├─ subdirectory_target
│  │  │  │  └─ CMakeLists.txt
│  │  │  └─ test.py
│  │  ├─ test_const_name.cpp
│  │  ├─ test_const_name.py
│  │  ├─ test_constants_and_functions.cpp
│  │  ├─ test_constants_and_functions.py
│  │  ├─ test_copy_move.cpp
│  │  ├─ test_copy_move.py
│  │  ├─ test_custom_type_casters.cpp
│  │  ├─ test_custom_type_casters.py
│  │  ├─ test_custom_type_setup.cpp
│  │  ├─ test_custom_type_setup.py
│  │  ├─ test_docstring_options.cpp
│  │  ├─ test_docstring_options.py
│  │  ├─ test_eigen_matrix.cpp
│  │  ├─ test_eigen_matrix.py
│  │  ├─ test_eigen_tensor.cpp
│  │  ├─ test_eigen_tensor.inl
│  │  ├─ test_eigen_tensor.py
│  │  ├─ test_embed
│  │  │  ├─ CMakeLists.txt
│  │  │  ├─ catch.cpp
│  │  │  ├─ external_module.cpp
│  │  │  ├─ test_interpreter.cpp
│  │  │  ├─ test_interpreter.py
│  │  │  └─ test_trampoline.py
│  │  ├─ test_enum.cpp
│  │  ├─ test_enum.py
│  │  ├─ test_eval.cpp
│  │  ├─ test_eval.py
│  │  ├─ test_eval_call.py
│  │  ├─ test_exceptions.cpp
│  │  ├─ test_exceptions.h
│  │  ├─ test_exceptions.py
│  │  ├─ test_factory_constructors.cpp
│  │  ├─ test_factory_constructors.py
│  │  ├─ test_gil_scoped.cpp
│  │  ├─ test_gil_scoped.py
│  │  ├─ test_iostream.cpp
│  │  ├─ test_iostream.py
│  │  ├─ test_kwargs_and_defaults.cpp
│  │  ├─ test_kwargs_and_defaults.py
│  │  ├─ test_local_bindings.cpp
│  │  ├─ test_local_bindings.py
│  │  ├─ test_methods_and_attributes.cpp
│  │  ├─ test_methods_and_attributes.py
│  │  ├─ test_modules.cpp
│  │  ├─ test_modules.py
│  │  ├─ test_multiple_inheritance.cpp
│  │  ├─ test_multiple_inheritance.py
│  │  ├─ test_numpy_array.cpp
│  │  ├─ test_numpy_array.py
│  │  ├─ test_numpy_dtypes.cpp
│  │  ├─ test_numpy_dtypes.py
│  │  ├─ test_numpy_vectorize.cpp
│  │  ├─ test_numpy_vectorize.py
│  │  ├─ test_opaque_types.cpp
│  │  ├─ test_opaque_types.py
│  │  ├─ test_operator_overloading.cpp
│  │  ├─ test_operator_overloading.py
│  │  ├─ test_pickling.cpp
│  │  ├─ test_pickling.py
│  │  ├─ test_python_multiple_inheritance.cpp
│  │  ├─ test_python_multiple_inheritance.py
│  │  ├─ test_pytypes.cpp
│  │  ├─ test_pytypes.py
│  │  ├─ test_sequences_and_iterators.cpp
│  │  ├─ test_sequences_and_iterators.py
│  │  ├─ test_smart_ptr.cpp
│  │  ├─ test_smart_ptr.py
│  │  ├─ test_stl.cpp
│  │  ├─ test_stl.py
│  │  ├─ test_stl_binders.cpp
│  │  ├─ test_stl_binders.py
│  │  ├─ test_tagbased_polymorphic.cpp
│  │  ├─ test_tagbased_polymorphic.py
│  │  ├─ test_thread.cpp
│  │  ├─ test_thread.py
│  │  ├─ test_type_caster_pyobject_ptr.cpp
│  │  ├─ test_type_caster_pyobject_ptr.py
│  │  ├─ test_union.cpp
│  │  ├─ test_union.py
│  │  ├─ test_unnamed_namespace_a.cpp
│  │  ├─ test_unnamed_namespace_a.py
│  │  ├─ test_unnamed_namespace_b.cpp
│  │  ├─ test_unnamed_namespace_b.py
│  │  ├─ test_vector_unique_ptr_member.cpp
│  │  ├─ test_vector_unique_ptr_member.py
│  │  ├─ test_virtual_functions.cpp
│  │  ├─ test_virtual_functions.py
│  │  ├─ valgrind-numpy-scipy.supp
│  │  └─ valgrind-python.supp
│  └─ tools
│     ├─ FindCatch.cmake
│     ├─ FindEigen3.cmake
│     ├─ FindPythonLibsNew.cmake
│     ├─ JoinPaths.cmake
│     ├─ check-style.sh
│     ├─ codespell_ignore_lines_from_errors.py
│     ├─ libsize.py
│     ├─ make_changelog.py
│     ├─ pybind11.pc.in
│     ├─ pybind11Common.cmake
│     ├─ pybind11NewTools.cmake
│     ├─ pybind11Tools.cmake
│     ├─ pyproject.toml
│     ├─ setup_global.py.in
│     └─ setup_main.py.in
├─ readme2.md
└─ src
   ├─ combat
   │  ├─ Actions.cpp
   │  ├─ BattleContext.cpp
   │  ├─ CardInstance.cpp
   │  ├─ CardManager.cpp
   │  ├─ CardQueue.cpp
   │  ├─ Monster.cpp
   │  ├─ MonsterGroup.cpp
   │  ├─ MonsterMoveDamage.cpp
   │  ├─ MonsterSpecific.cpp
   │  └─ Player.cpp
   ├─ game
   │  ├─ Card.cpp
   │  ├─ CombatReward.cpp
   │  ├─ Deck.cpp
   │  ├─ Game.cpp
   │  ├─ GameContext.cpp
   │  ├─ Map.cpp
   │  ├─ Neow.cpp
   │  ├─ SaveFile.cpp
   │  ├─ Shop.cpp
   │  └─ 游戏外输入.txt
   └─ sim
      ├─ BattleSimulator.cpp
      ├─ ConsoleSimulator.cpp
      ├─ PrintHelpers.cpp
      ├─ SimHelpers.cpp
      └─ search
         ├─ Action.cpp
         ├─ BattleScumSearcher2.cpp
         ├─ ExpertKnowledge.cpp
         ├─ GameAction.cpp
         ├─ ScumSearchAgent2.cpp
         └─ SimpleAgent.cpp

```