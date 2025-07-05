
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