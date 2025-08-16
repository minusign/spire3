好的，这是一个关于您提供的 C++ 代码的文档。
代码文档：PrintHelpers.cpp
概述
    该文件（PrintHelpers.cpp）属于一个模拟《杀戮尖塔》（Slay the Spire）游戏逻辑的项目。其主要功能是提供一系列辅助函数，用于将游戏的核心数据结构（如游戏状态、牌组、遗物、战斗上下文等）以人类可读的格式输出到标准的 std::ostream 流（例如，控制台输出）。
    这对于调试、记录游戏状态、分析游戏决策和复现特定游戏场景至关重要。代码通过大量使用 C++ 的 operator<< 运算符重载，使得打印复杂的游戏对象变得像打印基本数据类型一样简单直观。
    所有功能均在 sts 命名空间下定义。
    主要功能和函数详解
1. 遗物容器打印
    std::ostream& operator<<(std::ostream& os, const RelicContainer &rc)
    功能: 重载 << 运算符以打印 RelicContainer 对象。
    输出格式:
    打印一个花括号 {} 包围的列表。
    列表内是该容器中所有遗物的名称，如果遗物有计数器（如 Gremlin Horn）或其他特殊数据，则会以 遗物名:数据 的格式显示。
    各个遗物之间用逗号 , 分隔。
    示例: {Burning Blood:0,Ring of the Snake:0,Neows Lament:2,}
2. 卡牌打印
    std::ostream& operator<<(std::ostream &os, const Card &card)
    功能: 重载 << 运算符以打印 Card 对象。
    输出格式:
    打印卡牌的名称。
    特殊处理:
    如果卡牌是 RITUAL_DAGGER（仪式匕首），会额外打印其伤害值，格式为 卡牌名=伤害值。
    如果卡牌已升级 (upgraded 为 true):
    对于 SEARING_BLOW（灼热攻击），会显示其具体的升级次数，格式为 卡牌名+升级次数。
    对于其他卡牌，仅在名称后附加一个 + 号。
    示例: Strike+, Ritual Dagger=15, Searing Blow+10
3. 牌组打印
    std::ostream& operator<<(std::ostream &os, const Deck &deck)
    功能: 重载 << 运算符以打印 Deck 对象。
    输出格式: (牌组数量): [卡牌列表]。它首先显示牌组中的卡牌总数，然后打印每张卡牌的详细信息。
    示例: (12): [Strike, Strike, Defend, Defend+, Bash, ...]
4. 游戏状态 (GameContext) 打印
    std::ostream& operator<<(std::ostream &os, const sts::GameContext &gc)
    功能: 这是最重要的打印函数，重载 << 运算符以输出整个 GameContext 对象，提供了游戏运行时的完整快照。
    输出内容:
    种子 (Seed): 打印字符串和长整型两种格式的种子。
    游戏进程: 楼层 (floorNum)、章节 (act)、进阶等级 (ascension) 以及当前章节的 Boss。
    当前房间信息: 房间类型 (curRoom)、当前事件 (curEvent)、事件数据和屏幕状态。
    玩家信息: 通过调用 printPlayerInfo 打印。
    随机数生成器 (RNG) 状态: 通过调用 printRngInfo 打印所有 RNG 的计数器。
    药水信息: 通过调用 printPotionInfo 打印。
    怪物列表: 通过调用 printMonsterLists 打印。
    牌组和遗物: 分别使用它们重载过的 << 运算符进行打印。
    事件列表: 通过调用 printEventListState 打印。
5. 辅助打印函数
    这些函数被主 GameContext 打印函数调用，用于模块化地输出部分信息。
    printPlayerInfo(std::ostream &os, const GameContext &gc):
    打印玩家的核心状态，包括当前/最大生命值、金币、已收集的钥匙（红、绿、蓝）、角色职业和药水容量。
    printRngInfo(std::ostream &os, const GameContext &gc, const std::string &separator):
    打印游戏中所有类型的随机数生成器（RNG）的当前 counter 值。这对于复现和调试随机事件至关重要。包括：neowRng, treasureRng, eventRng, relicRng, potionRng, cardRng 等。
    printPotionInfo(std::ostream &os, const GameContext &gc):
    打印玩家当前持有的药水列表。
    printMonsterLists(std::ostream &os, const GameContext &gc):
    显示当前章节剩余的普通怪物战斗 (monsterList) 和精英怪物战斗 (eliteMonsterList) 的序列，并标出当前的偏移量。
    printEventListState(std::ostream &os, const GameContext &gc):
    打印剩余的可用事件池，包括普通事件、特殊一次性事件和地图上的可选事件（如火堆）。
    printBattleContextRng(std::ostream &os, const BattleContext &bc):
    专门用于打印战斗场景 (BattleContext) 中的 RNG 状态，如 AI 决策 RNG、卡牌效果随机 RNG 等。
    printCardInstanceSimple(std::ostream &os, const CardInstance &card):
    类似于卡牌打印函数，但用于 CardInstance 对象，这通常代表在战斗中实际存在的一张卡牌。同样对 RITUAL_DAGGER 和 SEARING_BLOW 有特殊处理。
printOutcome(std::ostream &os, const GameContext &gc):
用于在游戏结束后打印最终结果。
如果胜利，会显示胜利的楼层和对手。
如果失败，会显示失败的楼层、房间类型（以及具体的敌人或事件），并附上当时的牌组和遗物信息。
使用场景
开发者或使用者可以将任何一个被重载了 << 运算符的对象直接传递给 std::cout 或其他 std::ostream 对象，从而在程序执行的任何时刻获得详细的状态信息。