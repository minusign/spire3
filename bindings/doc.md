模块名为 slaythespire。它提供了以下主要功能：
游戏模拟: 运行游戏模拟。
种子管理: 获取和转换游戏种子。
神经网络接口: 提取游戏状态的观察值以用于机器学习模型。
搜索代理: 使用蒙特卡洛树搜索 (MCTS) 玩游戏。
游戏上下文: 访问和修改当前游戏的状态。
游戏实体: 定义和表示游戏中的各种实体，如卡牌、遗物、房间、遭遇等。

slaythespire 模块函数
    play(): 运行 Slay the Spire 控制台模拟器。
    get_seed_str(seed_long): 将整数种子转换为游戏UI中使用的字符串表示形式。
    get_seed_long(seed_str): 将种子字符串转换为其整数表示形式。
    getNNInterface(): 获取 NNInterface 对象的单例实例。

NNInterface 类 该类提供了一个接口来获取游戏状态的神经网络观察值。
    属性:
        observation_space_size (int, 只读): 观察空间的大小（固定为 412）。
    方法:
        getObservation(game_context): 给定一个 GameContext 对象，返回一个表示当前游戏状态的观察数组。
        getObservationMaximums(): 返回观察空间中各个值的定义最大值。
Agent 类 (search::ScumSearchAgent2) 这是一个实现蒙特卡洛树搜索 (MCTS) 的搜索代理，用于在 Slay the Spire 中做出决策。
    构造函数:
        Agent(): 初始化一个新的代理实例。
    属性:
        simulation_count_base (int): 代理在每个回合进行蒙特卡洛树搜索的模拟次数。
        boss_simulation_multiplier (float): Boss 战时模拟次数的奖励乘数。
        pause_on_card_reward (bool): 当遇到卡牌奖励选择时，代理是否暂停以将控制权交给用户。
        print_logs (bool): 设置为 True 时，代理在采取行动时会打印状态信息。
    方法:
        playout(game_context): 让代理根据当前 GameContext 进行一次游戏对局。
GameContext 类. 这个类代表了 Slay the Spire 游戏的当前状态。
    构造函数:
        GameContext(character_class, seed, ascension_level): 使用指定的角色职业、种子和进阶等级初始化一个新的游戏上下文。
    方法:
        pick_reward_card(card): 选择获取卡牌奖励列表中指定索引的卡牌。
        skip_reward_cards(): 选择跳过卡牌奖励（如果拥有“歌唱碗”遗物，会使最大生命值增加 2）。
        get_card_reward(): 返回当前的卡牌奖励列表。
        obtain_card(card): 将一张卡牌添加到牌组中。
        remove_card(idx): 从牌组中移除指定索引的卡牌。
    只读属性:
        encounter: 当前的怪物遭遇。
        deck: 牌组中卡牌的副本列表。
        relics: 遗物列表的副本。
    可读写属性:
        outcome: 游戏的当前结果（UNDECIDED、PLAYER_VICTORY、PLAYER_LOSS）。
        act: 当前的章节。
        floor_num: 当前的楼层编号。
        screen_state: 当前屏幕的状态（例如 BATTLE、REWARDS、MAP_SCREEN）。
        seed: 游戏的种子。
        cur_map_node_x, cur_map_node_y: 当前地图节点的 X 和 Y 坐标。
        cur_room: 当前房间的类型。
        boss: 当前章节的 Boss 遭遇。
        cur_hp, max_hp: 当前生命值和最大生命值。
        gold: 当前金币数量。
        blue_key, green_key, red_key: 是否拥有相应的钥匙。
        card_rarity_factor, potion_chance, monster_chance, shop_chance, treasure_chance: 影响生成几率的因子/几率。
        shop_remove_count: 商店移除卡牌的次数。
        speedrun_pace: 速通节奏。
        note_for_yourself_card: “自省”卡牌的 ID。
    表示:
    __repr__: 返回 GameContext 对象的字符串表示形式。
Relic 类 (RelicInstance) 表示游戏中的一个遗物实例。
    可读写属性:
        id: 遗物的 ID。
        data: 遗物的额外数据（如果适用）。
SpireMap 类 (Map) 表示 Slay the Spire 的地图结构。
    构造函数:
        SpireMap(seed, act, ascension_level, is_endless_mode): 
        使用指定的种子、章节、进阶等级和是否为无尽模式初始化一个新的地图。
    方法:
        get_room_type(x, y): 返回给定坐标的房间类型。
        has_edge(x, y, x2): 检查从 (x, y) 到 (x2, y+1) 是否存在边缘（路径）。
        get_nn_rep(): 返回地图的神经网络表示。
    表示:
        __repr__: 返回地图的字符串表示形式。
Card 类 表示游戏中的一张卡牌。
    构造函数:
        Card(card_id): 使用指定的 CardId 初始化一张卡牌。
    方法:
        upgrade(): 升级卡牌。
    可读写属性:
        misc: 模拟器内部使用的值，用于例如“仪式匕首”的伤害。
    只读属性:
        id: 卡牌的 ID。
        upgraded: 卡牌是否已升级。
        upgrade_count: 卡牌的升级次数（用于例如“灼热之击”）。
        innate: 卡牌是否为固有牌。
        transformable: 卡牌是否可以被转化。
        upgradable: 卡牌是否可以被升级。
        is_strikeCard: 卡牌是否为打击牌。
        is_starter_strike_or_defend: 卡牌是否为初始打击或防御牌。
        rarity: 卡牌的稀有度。
        type: 卡牌的类型。
    表示:
    __repr__: 返回卡牌的字符串表示形式，包括是否升级以及“灼热之击”的升级等级。


当然，这是关于提供的 C++ 代码库的文档：

SlayTheSpire 模拟器 Python 绑定文档
这个文档描述了一个 Python 模块，它通过 pybind11 将一个 SlayTheSpire 模拟器（用 C++ 编写）的功能暴露给 Python。它允许 Python 用户与游戏模拟器交互，执行游戏操作，访问游戏状态，并使用内置的搜索代理。

模块概览
模块名为 slaythespire。它提供了以下主要功能：

游戏模拟: 运行游戏模拟。

种子管理: 获取和转换游戏种子。

神经网络接口: 提取游戏状态的观察值以用于机器学习模型。

搜索代理: 使用蒙特卡洛树搜索 (MCTS) 玩游戏。

游戏上下文: 访问和修改当前游戏的状态。

游戏实体: 定义和表示游戏中的各种实体，如卡牌、遗物、房间、遭遇等。

核心功能
slaythespire 模块函数
play(): 运行 Slay the Spire 控制台模拟器。

get_seed_str(seed_long): 将整数种子转换为游戏 UI 中使用的字符串表示形式。

get_seed_long(seed_str): 将种子字符串转换为其整数表示形式。

getNNInterface(): 获取 NNInterface 对象的单例实例。

NNInterface 类
该类提供了一个接口来获取游戏状态的神经网络观察值。

属性:

observation_space_size (int, 只读): 观察空间的大小（固定为 412）。

方法:

getObservation(game_context): 给定一个 GameContext 对象，返回一个表示当前游戏状态的观察数组。

getObservationMaximums(): 返回观察空间中各个值的定义最大值。

Agent 类 (search::ScumSearchAgent2)
这是一个实现蒙特卡洛树搜索 (MCTS) 的搜索代理，用于在 Slay the Spire 中做出决策。

构造函数:

Agent(): 初始化一个新的代理实例。

属性:

simulation_count_base (int): 代理在每个回合进行蒙特卡洛树搜索的模拟次数。

boss_simulation_multiplier (float): Boss 战时模拟次数的奖励乘数。

pause_on_card_reward (bool): 当遇到卡牌奖励选择时，代理是否暂停以将控制权交给用户。

print_logs (bool): 设置为 True 时，代理在采取行动时会打印状态信息。

方法:

playout(game_context): 让代理根据当前 GameContext 进行一次游戏对局。

GameContext 类
这个类代表了 Slay the Spire 游戏的当前状态。

构造函数:

GameContext(character_class, seed, ascension_level): 使用指定的角色职业、种子和进阶等级初始化一个新的游戏上下文。

方法:

pick_reward_card(card): 选择获取卡牌奖励列表中指定索引的卡牌。

skip_reward_cards(): 选择跳过卡牌奖励（如果拥有“歌唱碗”遗物，会使最大生命值增加 2）。

get_card_reward(): 返回当前的卡牌奖励列表。

obtain_card(card): 将一张卡牌添加到牌组中。

remove_card(idx): 从牌组中移除指定索引的卡牌。

只读属性:

encounter: 当前的怪物遭遇。

deck: 牌组中卡牌的副本列表。

relics: 遗物列表的副本。

可读写属性:

outcome: 游戏的当前结果（UNDECIDED、PLAYER_VICTORY、PLAYER_LOSS）。

act: 当前的章节。

floor_num: 当前的楼层编号。

screen_state: 当前屏幕的状态（例如 BATTLE、REWARDS、MAP_SCREEN）。

seed: 游戏的种子。

cur_map_node_x, cur_map_node_y: 当前地图节点的 X 和 Y 坐标。

cur_room: 当前房间的类型。

boss: 当前章节的 Boss 遭遇。

cur_hp, max_hp: 当前生命值和最大生命值。

gold: 当前金币数量。

blue_key, green_key, red_key: 是否拥有相应的钥匙。

card_rarity_factor, potion_chance, monster_chance, shop_chance, treasure_chance: 影响生成几率的因子/几率。

shop_remove_count: 商店移除卡牌的次数。

speedrun_pace: 速通节奏。

note_for_yourself_card: “自省”卡牌的 ID。

表示:

__repr__: 返回 GameContext 对象的字符串表示形式。

Relic 类 (RelicInstance)
表示游戏中的一个遗物实例。

可读写属性:

id: 遗物的 ID。

data: 遗物的额外数据（如果适用）。

SpireMap 类 (Map)
表示 Slay the Spire 的地图结构。

构造函数:

SpireMap(seed, act, ascension_level, is_endless_mode): 使用指定的种子、章节、进阶等级和是否为无尽模式初始化一个新的地图。

方法:

get_room_type(x, y): 返回给定坐标的房间类型。

has_edge(x, y, x2): 检查从 (x, y) 到 (x2, y+1) 是否存在边缘（路径）。

get_nn_rep(): 返回地图的神经网络表示。

表示:

__repr__: 返回地图的字符串表示形式。

Card 类
表示游戏中的一张卡牌。

构造函数:

Card(card_id): 使用指定的 CardId 初始化一张卡牌。

方法:

upgrade(): 升级卡牌。

可读写属性:

misc: 模拟器内部使用的值，用于例如“仪式匕首”的伤害。

只读属性:

id: 卡牌的 ID。

upgraded: 卡牌是否已升级。

upgrade_count: 卡牌的升级次数（用于例如“灼热之击”）。

innate: 卡牌是否为固有牌。

transformable: 卡牌是否可以被转化。

upgradable: 卡牌是否可以被升级。

is_strikeCard: 卡牌是否为打击牌。

is_starter_strike_or_defend: 卡牌是否为初始打击或防御牌。

rarity: 卡牌的稀有度。

type: 卡牌的类型。

表示:

__repr__: 返回卡牌的字符串表示形式，包括是否升级以及“灼热之击”的升级等级。

枚举类型
模块暴露了多个枚举，用于表示游戏中的不同状态和实体：

GameOutcome: | UNDECIDED | PLAYER_VICTORY | PLAYER_LOSS

ScreenState: | INVALID | EVENT_SCREEN | REWARDS | BOSS_RELIC_REWARDS
CARD_SELECT | MAP_SCREEN | TREASURE_ROOM | REST_ROOM | SHOP_ROOM | BATTLE

CharacterClass: | IRONCLAD | SILENT | DEFECT | WATCHER | INVALID

Room: | SHOP | REST | EVENT | ELITE | MONSTER | TREASURE
BOSS | BOSS_TREASURE | NONE | INVALID | 

CardRarity: | COMMON | UNCOMMON | RARE | BASIC | SPECIAL | CURSE | INVALID

CardColor: | RED | GREEN | PURPLE | COLORLESS | CURSE | INVALID

CardType: | ATTACK | SKILL | POWER | CURSE | STATUS | INVALID

CardId:
包含所有游戏中卡牌的枚举值，例如 ACCURACY, ACROBATICS, ANGER, BASH, DEFEND_RED, STRIKE_RED, ZAP 等。

MonsterEncounter (简写为 ME):
包含所有游戏中怪物遭遇的枚举值，例如 CULTIST, SLIME_BOSS, THE_GUARDIAN, AWAKENED_ONE, THE_HEART 等。

RelicId:
包含所有游戏中遗物的枚举值，例如 AKABEKO, ECTOPLASM, NECRONOMICON, SNECKO_EYE, BURNING_BLOOD, CIRCLET 等。