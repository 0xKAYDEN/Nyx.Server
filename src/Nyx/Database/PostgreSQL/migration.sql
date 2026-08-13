-- Nyx Server PostgreSQL Migration Script
-- Generated: 2026-06-28

-- Create database
-- Run this manually: CREATE DATABASE nyx;

-- Enable extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm"; -- For text search

-- =====================================================
-- ACCOUNTS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS accounts (
    uid SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    entity_id INTEGER,
    ip VARCHAR(45),
    mac_address VARCHAR(17),
    state INTEGER DEFAULT 0,
    vip_level INTEGER DEFAULT 0,
    vip_points INTEGER DEFAULT 0,
    hardware_id VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_accounts_username ON accounts(username);
CREATE INDEX idx_accounts_entity_id ON accounts(entity_id);

-- =====================================================
-- ENTITIES TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS entities (
    uid SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    mesh INTEGER DEFAULT 0,
    hairstyle INTEGER DEFAULT 0,
    class INTEGER DEFAULT 0,
    level INTEGER DEFAULT 1,
    experience BIGINT DEFAULT 0,
    strength INTEGER DEFAULT 0,
    agility INTEGER DEFAULT 0,
    vitality INTEGER DEFAULT 0,
    spirit INTEGER DEFAULT 0,
    attribute_points INTEGER DEFAULT 0,
    hitpoints INTEGER DEFAULT 0,
    mana INTEGER DEFAULT 0,
    pk_points INTEGER DEFAULT 0,
    profession INTEGER DEFAULT 0,
    rebirth INTEGER DEFAULT 0,
    map_id INTEGER DEFAULT 1002,
    x INTEGER DEFAULT 240,
    y INTEGER DEFAULT 236,
    hair_color INTEGER DEFAULT 0,
    money INTEGER DEFAULT 0,
    conquer_points INTEGER DEFAULT 0,
    virtue BIGINT DEFAULT 0,
    vip_level INTEGER DEFAULT 0,
    online_time INTEGER DEFAULT 0,
    is_online BOOLEAN DEFAULT FALSE,
    spouse VARCHAR(50),
    guild_id INTEGER DEFAULT 0,
    clan_id INTEGER DEFAULT 0,
    union_id INTEGER DEFAULT 0,
    nobility_rank INTEGER DEFAULT 0,
    arena_points INTEGER DEFAULT 0,
    team_arena_points INTEGER DEFAULT 0,
    strength_points INTEGER DEFAULT 0,
    agility_points INTEGER DEFAULT 0,
    vitality_points INTEGER DEFAULT 0,
    spirit_points INTEGER DEFAULT 0,
    first_reborn_class INTEGER DEFAULT 0,
    second_reborn_class INTEGER DEFAULT 0,
    rebirth_count INTEGER DEFAULT 0,
    quiz_points INTEGER DEFAULT 0,
    experience_ball INTEGER DEFAULT 0,
    active_days INTEGER DEFAULT 0,
    last_reset_date INTEGER DEFAULT 0,
    energy INTEGER DEFAULT 0,
    max_energy INTEGER DEFAULT 120,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_entities_name ON entities(name);
CREATE INDEX idx_entities_is_online ON entities(is_online);
CREATE INDEX idx_entities_guild_id ON entities(guild_id);
CREATE INDEX idx_entities_clan_id ON entities(clan_id);

-- =====================================================
-- ITEMS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS items (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    item_id INTEGER NOT NULL,
    plus INTEGER DEFAULT 0,
    bless INTEGER DEFAULT 0,
    enchant INTEGER DEFAULT 0,
    socket_one INTEGER DEFAULT 0,
    socket_two INTEGER DEFAULT 0,
    durability INTEGER DEFAULT 0,
    max_durability INTEGER DEFAULT 0,
    bound BOOLEAN DEFAULT FALSE,
    locked BOOLEAN DEFAULT FALSE,
    color INTEGER DEFAULT 0,
    stack_size INTEGER DEFAULT 1,
    effect_type INTEGER DEFAULT 0,
    effect_value INTEGER DEFAULT 0,
    mode INTEGER DEFAULT 0,
    position INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_items_entity_uid ON items(entity_uid);
CREATE INDEX idx_items_item_id ON items(item_id);

-- =====================================================
-- SPELLS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS spells (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    spell_id INTEGER NOT NULL,
    level INTEGER DEFAULT 0,
    experience INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, spell_id)
);

CREATE INDEX idx_spells_entity_uid ON spells(entity_uid);

-- =====================================================
-- PROFICIENCIES TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS proficiencies (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    proficiency_id INTEGER NOT NULL,
    level INTEGER DEFAULT 0,
    experience INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, proficiency_id)
);

CREATE INDEX idx_proficiencies_entity_uid ON proficiencies(entity_uid);

-- =====================================================
-- GUILDS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS guilds (
    uid SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    leader_uid INTEGER,
    leader_name VARCHAR(50),
    fund INTEGER DEFAULT 0,
    level INTEGER DEFAULT 1,
    emblem INTEGER DEFAULT 0,
    members_count INTEGER DEFAULT 0,
    max_members INTEGER DEFAULT 50,
    announce VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_guilds_name ON guilds(name);
CREATE INDEX idx_guilds_leader_uid ON guilds(leader_uid);

-- =====================================================
-- GUILD MEMBERS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS guild_members (
    uid SERIAL PRIMARY KEY,
    guild_uid INTEGER NOT NULL REFERENCES guilds(uid) ON DELETE CASCADE,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    rank INTEGER DEFAULT 0,
    title VARCHAR(50),
    donation INTEGER DEFAULT 0,
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(guild_uid, entity_uid)
);

CREATE INDEX idx_guild_members_guild_uid ON guild_members(guild_uid);
CREATE INDEX idx_guild_members_entity_uid ON guild_members(entity_uid);

-- =====================================================
-- FRIENDS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS friends (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    friend_uid INTEGER NOT NULL,
    friend_name VARCHAR(50),
    type INTEGER DEFAULT 0, -- 0=friend, 1=enemy, 2=trade partner
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, friend_uid)
);

CREATE INDEX idx_friends_entity_uid ON friends(entity_uid);

-- =====================================================
-- ENEMIES TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS enemies (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    enemy_uid INTEGER NOT NULL,
    enemy_name VARCHAR(50),
    kill_count INTEGER DEFAULT 0,
    death_count INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, enemy_uid)
);

CREATE INDEX idx_enemies_entity_uid ON enemies(entity_uid);

-- =====================================================
-- APPRENTICE TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS apprentice (
    uid SERIAL PRIMARY KEY,
    mentor_uid INTEGER NOT NULL,
    mentor_name VARCHAR(50),
    apprentice_uid INTEGER NOT NULL,
    apprentice_name VARCHAR(50),
    experience INTEGER DEFAULT 0,
    level INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(mentor_uid, apprentice_uid)
);

CREATE INDEX idx_apprentice_mentor_uid ON apprentice(mentor_uid);
CREATE INDEX idx_apprentice_apprentice_uid ON apprentice(apprentice_uid);

-- =====================================================
-- ARENA TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS arena (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    entity_name VARCHAR(50),
    arena_points INTEGER DEFAULT 0,
    wins INTEGER DEFAULT 0,
    losses INTEGER DEFAULT 0,
    rank INTEGER DEFAULT 0,
    history TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_arena_entity_uid ON arena(entity_uid);
CREATE INDEX idx_arena_rank ON arena(rank);

-- =====================================================
-- TEAM ARENA TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS team_arena (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    entity_name VARCHAR(50),
    arena_points INTEGER DEFAULT 0,
    wins INTEGER DEFAULT 0,
    losses INTEGER DEFAULT 0,
    rank INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_team_arena_entity_uid ON team_arena(entity_uid);

-- =====================================================
-- NOBILITY TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS nobility (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    entity_name VARCHAR(50),
    rank INTEGER DEFAULT 0,
    donation BIGINT DEFAULT 0,
    position INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_nobility_entity_uid ON nobility(entity_uid);
CREATE INDEX idx_nobility_rank ON nobility(rank);

-- =====================================================
-- CHI TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS chi (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    power INTEGER DEFAULT 0,
    level INTEGER DEFAULT 0,
    experience INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_chi_entity_uid ON chi(entity_uid);

-- =====================================================
-- DAILY QUEST TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS daily_quest (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    quest_id INTEGER NOT NULL,
    progress INTEGER DEFAULT 0,
    completed BOOLEAN DEFAULT FALSE,
    reset_date INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, quest_id)
);

CREATE INDEX idx_daily_quest_entity_uid ON daily_quest(entity_uid);

-- =====================================================
-- MAILBOX TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS mailbox (
    uid SERIAL PRIMARY KEY,
    sender_uid INTEGER,
    sender_name VARCHAR(50),
    receiver_uid INTEGER NOT NULL,
    subject VARCHAR(100),
    message TEXT,
    item_uid INTEGER,
    item_id INTEGER,
    money INTEGER DEFAULT 0,
    conquer_points INTEGER DEFAULT 0,
    read BOOLEAN DEFAULT FALSE,
    claimed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP
);

CREATE INDEX idx_mailbox_receiver_uid ON mailbox(receiver_uid);
CREATE INDEX idx_mailbox_read ON mailbox(read);

-- =====================================================
-- DETAINED ITEMS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS detained_items (
    uid SERIAL PRIMARY KEY,
    item_uid INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    detainer_uid INTEGER NOT NULL,
    detainer_name VARCHAR(50),
    owner_uid INTEGER NOT NULL,
    owner_name VARCHAR(50),
    days INTEGER DEFAULT 3,
    money INTEGER DEFAULT 0,
    conquer_points INTEGER DEFAULT 0,
    claimed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP
);

CREATE INDEX idx_detained_items_owner_uid ON detained_items(owner_uid);
CREATE INDEX idx_detained_items_detainer_uid ON detained_items(detainer_uid);

-- =====================================================
-- CLAIM ITEMS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS claim_items (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    item_uid INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    plus INTEGER DEFAULT 0,
    bless INTEGER DEFAULT 0,
    enchant INTEGER DEFAULT 0,
    socket_one INTEGER DEFAULT 0,
    socket_two INTEGER DEFAULT 0,
    claimed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_claim_items_entity_uid ON claim_items(entity_uid);

-- =====================================================
-- FLOOR ITEMS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS floor_items (
    uid SERIAL PRIMARY KEY,
    item_uid INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    map_id INTEGER NOT NULL,
    x INTEGER NOT NULL,
    y INTEGER NOT NULL,
    drop_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    owner_uid INTEGER,
    protected_until TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_floor_items_map_id ON floor_items(map_id);
CREATE INDEX idx_floor_items_owner_uid ON floor_items(owner_uid);

-- =====================================================
-- BANNED IPS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS banned_ips (
    uid SERIAL PRIMARY KEY,
    ip VARCHAR(45) NOT NULL,
    reason VARCHAR(255),
    banned_by VARCHAR(50),
    banned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    permanent BOOLEAN DEFAULT FALSE
);

CREATE INDEX idx_banned_ips_ip ON banned_ips(ip);

-- =====================================================
-- CONFIGURATION TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS configuration (
    uid SERIAL PRIMARY KEY,
    server_name VARCHAR(50),
    server_ip VARCHAR(45),
    server_port INTEGER,
    max_players INTEGER DEFAULT 1000,
    item_uid INTEGER DEFAULT 1,
    guild_id INTEGER DEFAULT 1,
    union_id INTEGER DEFAULT 1,
    server_kingdom INTEGER DEFAULT 0,
    last_daily_sign_reset INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================================================
-- PROMOTIONS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS promotions (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    promotion_id INTEGER NOT NULL,
    level INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, promotion_id)
);

CREATE INDEX idx_promotions_entity_uid ON promotions(entity_uid);

-- =====================================================
-- ACTIVENESS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS activeness (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    points INTEGER DEFAULT 0,
    daily_points INTEGER DEFAULT 0,
    weekly_points INTEGER DEFAULT 0,
    last_reset_date INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_activeness_entity_uid ON activeness(entity_uid);

-- =====================================================
-- INNER POWER TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS inner_power (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    level INTEGER DEFAULT 0,
    experience INTEGER DEFAULT 0,
    stage INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_inner_power_entity_uid ON inner_power(entity_uid);

-- =====================================================
-- CLAN TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS clans (
    uid SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    leader_uid INTEGER,
    leader_name VARCHAR(50),
    fund INTEGER DEFAULT 0,
    level INTEGER DEFAULT 1,
    members_count INTEGER DEFAULT 0,
    max_members INTEGER DEFAULT 50,
    announce VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_clans_name ON clans(name);

-- =====================================================
-- CLAN MEMBERS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS clan_members (
    uid SERIAL PRIMARY KEY,
    clan_uid INTEGER NOT NULL REFERENCES clans(uid) ON DELETE CASCADE,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    rank INTEGER DEFAULT 0,
    title VARCHAR(50),
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(clan_uid, entity_uid)
);

CREATE INDEX idx_clan_members_clan_uid ON clan_members(clan_uid);
CREATE INDEX idx_clan_members_entity_uid ON clan_members(entity_uid);

-- =====================================================
-- JIANG HU TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS jiang_hu (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    level INTEGER DEFAULT 0,
    experience INTEGER DEFAULT 0,
    stage INTEGER DEFAULT 0,
    talent_points INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_jiang_hu_entity_uid ON jiang_hu(entity_uid);

-- =====================================================
-- FURNITURE TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS furniture (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    item_id INTEGER NOT NULL,
    x INTEGER DEFAULT 0,
    y INTEGER DEFAULT 0,
    direction INTEGER DEFAULT 0,
    color INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_furniture_entity_uid ON furniture(entity_uid);

-- =====================================================
-- HOUSE TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS house (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    level INTEGER DEFAULT 1,
    style INTEGER DEFAULT 0,
    furniture_slots INTEGER DEFAULT 10,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_house_entity_uid ON house(entity_uid);

-- =====================================================
-- AUCTION TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS auction (
    uid SERIAL PRIMARY KEY,
    item_uid INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    seller_uid INTEGER NOT NULL,
    seller_name VARCHAR(50),
    buyer_uid INTEGER,
    buyer_name VARCHAR(50),
    price INTEGER NOT NULL,
    buyout_price INTEGER,
    duration INTEGER DEFAULT 24,
    status INTEGER DEFAULT 0, -- 0=active, 1=sold, 2=expired, 3=cancelled
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    sold_at TIMESTAMP
);

CREATE INDEX idx_auction_seller_uid ON auction(seller_uid);
CREATE INDEX idx_auction_status ON auction(status);
CREATE INDEX idx_auction_item_id ON auction(item_id);

-- =====================================================
-- ELITE PK TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS elite_pk (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    entity_name VARCHAR(50),
    rank INTEGER DEFAULT 0,
    points INTEGER DEFAULT 0,
    wins INTEGER DEFAULT 0,
    losses INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_elite_pk_entity_uid ON elite_pk(entity_uid);
CREATE INDEX idx_elite_pk_rank ON elite_pk(rank);

-- =====================================================
-- LOTTERY TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS lottery (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    ticket_id INTEGER NOT NULL,
    numbers VARCHAR(50),
    prize INTEGER DEFAULT 0,
    claimed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_lottery_entity_uid ON lottery(entity_uid);

-- =====================================================
-- STORAGE TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS storage (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    storage_type INTEGER DEFAULT 0,
    item_uid INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    plus INTEGER DEFAULT 0,
    bless INTEGER DEFAULT 0,
    enchant INTEGER DEFAULT 0,
    socket_one INTEGER DEFAULT 0,
    socket_two INTEGER DEFAULT 0,
    stack_size INTEGER DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_storage_entity_uid ON storage(entity_uid);
CREATE INDEX idx_storage_storage_type ON storage(storage_type);

-- =====================================================
-- VARIABLES TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS variables (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL,
    key VARCHAR(100) NOT NULL,
    value TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, key)
);

CREATE INDEX idx_variables_entity_uid ON variables(entity_uid);

-- =====================================================
-- SIGN IN TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS sign_in (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    sign_date DATE NOT NULL,
    consecutive_days INTEGER DEFAULT 1,
    reward_claimed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, sign_date)
);

CREATE INDEX idx_sign_in_entity_uid ON sign_in(entity_uid);

-- =====================================================
-- REINCARNATION TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS reincarnation (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    rebirth_count INTEGER DEFAULT 0,
    level INTEGER DEFAULT 0,
    experience INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_reincarnation_entity_uid ON reincarnation(entity_uid);

-- =====================================================
-- UNION TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS unions (
    uid SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    leader_uid INTEGER,
    leader_name VARCHAR(50),
    fund INTEGER DEFAULT 0,
    level INTEGER DEFAULT 1,
    members_count INTEGER DEFAULT 0,
    max_members INTEGER DEFAULT 100,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_unions_name ON unions(name);

-- =====================================================
-- UNION MEMBERS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS union_members (
    uid SERIAL PRIMARY KEY,
    union_uid INTEGER NOT NULL REFERENCES unions(uid) ON DELETE CASCADE,
    guild_uid INTEGER NOT NULL REFERENCES guilds(uid) ON DELETE CASCADE,
    rank INTEGER DEFAULT 0,
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(union_uid, guild_uid)
);

CREATE INDEX idx_union_members_union_uid ON union_members(union_uid);
CREATE INDEX idx_union_members_guild_uid ON union_members(guild_uid);

-- =====================================================
-- PERFECTION TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS perfection (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    level INTEGER DEFAULT 0,
    stage INTEGER DEFAULT 0,
    experience INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_perfection_entity_uid ON perfection(entity_uid);

-- =====================================================
-- SOUL PROTECTION TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS soul_protection (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    level INTEGER DEFAULT 0,
    experience INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_soul_protection_entity_uid ON soul_protection(entity_uid);

-- =====================================================
-- FLOWERS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS flowers (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    sender_uid INTEGER,
    sender_name VARCHAR(50),
    flower_type INTEGER DEFAULT 0,
    amount INTEGER DEFAULT 1,
    message VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_flowers_entity_uid ON flowers(entity_uid);

-- =====================================================
-- HARDWARE BAN TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS hardware_ban (
    uid SERIAL PRIMARY KEY,
    hardware_id VARCHAR(255) NOT NULL,
    reason VARCHAR(255),
    banned_by VARCHAR(50),
    banned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    permanent BOOLEAN DEFAULT FALSE
);

CREATE INDEX idx_hardware_ban_hardware_id ON hardware_ban(hardware_id);

-- =====================================================
-- SUSPENDED USERS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS suspended_users (
    uid SERIAL PRIMARY KEY,
    account_uid INTEGER NOT NULL,
    username VARCHAR(50),
    reason VARCHAR(255),
    suspended_by VARCHAR(50),
    suspended_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    permanent BOOLEAN DEFAULT FALSE
);

CREATE INDEX idx_suspended_users_account_uid ON suspended_users(account_uid);

-- =====================================================
-- WAY2HEROES TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS way2heroes (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    stage INTEGER DEFAULT 0,
    progress INTEGER DEFAULT 0,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_way2heroes_entity_uid ON way2heroes(entity_uid);

-- =====================================================
-- KINGDOM MISSION TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS kingdom_mission (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    mission_id INTEGER NOT NULL,
    progress INTEGER DEFAULT 0,
    completed BOOLEAN DEFAULT FALSE,
    reward_claimed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, mission_id)
);

CREATE INDEX idx_kingdom_mission_entity_uid ON kingdom_mission(entity_uid);

-- =====================================================
-- BOOTH TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS booth (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    map_id INTEGER NOT NULL,
    x INTEGER NOT NULL,
    y INTEGER NOT NULL,
    name VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_booth_entity_uid ON booth(entity_uid);
CREATE INDEX idx_booth_map_id ON booth(map_id);

-- =====================================================
-- BOOTH ITEMS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS booth_items (
    uid SERIAL PRIMARY KEY,
    booth_uid INTEGER NOT NULL REFERENCES booth(uid) ON DELETE CASCADE,
    item_uid INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    price INTEGER NOT NULL,
    stack_size INTEGER DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_booth_items_booth_uid ON booth_items(booth_uid);

-- =====================================================
-- ROULETTE TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS roulette (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    bet_amount INTEGER DEFAULT 0,
    bet_color INTEGER DEFAULT 0,
    bet_number INTEGER DEFAULT -1,
    result_number INTEGER DEFAULT 0,
    result_color INTEGER DEFAULT 0,
    won INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_roulette_entity_uid ON roulette(entity_uid);

-- =====================================================
-- QUIZ TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS quiz (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    points INTEGER DEFAULT 0,
    correct_answers INTEGER DEFAULT 0,
    wrong_answers INTEGER DEFAULT 0,
    last_play_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_quiz_entity_uid ON quiz(entity_uid);

-- =====================================================
-- CONQUER ITEM TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS conquer_item (
    uid SERIAL PRIMARY KEY,
    item_uid INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    plus INTEGER DEFAULT 0,
    bless INTEGER DEFAULT 0,
    enchant INTEGER DEFAULT 0,
    socket_one INTEGER DEFAULT 0,
    socket_two INTEGER DEFAULT 0,
    durability INTEGER DEFAULT 0,
    max_durability INTEGER DEFAULT 0,
    bound BOOLEAN DEFAULT FALSE,
    locked BOOLEAN DEFAULT FALSE,
    color INTEGER DEFAULT 0,
    stack_size INTEGER DEFAULT 1,
    effect_type INTEGER DEFAULT 0,
    effect_value INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_conquer_item_item_uid ON conquer_item(item_uid);
CREATE INDEX idx_conquer_item_item_id ON conquer_item(item_id);

-- =====================================================
-- ENTITY VARIABLE TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS entity_variable (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL,
    key VARCHAR(100) NOT NULL,
    value TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid, key)
);

CREATE INDEX idx_entity_variable_entity_uid ON entity_variable(entity_uid);

-- =====================================================
-- SKILL TOURNAMENT TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS skill_tournament (
    uid SERIAL PRIMARY KEY,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    entity_name VARCHAR(50),
    rank INTEGER DEFAULT 0,
    points INTEGER DEFAULT 0,
    wins INTEGER DEFAULT 0,
    losses INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(entity_uid)
);

CREATE INDEX idx_skill_tournament_entity_uid ON skill_tournament(entity_uid);
CREATE INDEX idx_skill_tournament_rank ON skill_tournament(rank);

-- =====================================================
-- TEAM TOURNAMENT TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS team_tournament (
    uid SERIAL PRIMARY KEY,
    team_name VARCHAR(50),
    leader_uid INTEGER,
    leader_name VARCHAR(50),
    rank INTEGER DEFAULT 0,
    points INTEGER DEFAULT 0,
    wins INTEGER DEFAULT 0,
    losses INTEGER DEFAULT 0,
    members_count INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_team_tournament_leader_uid ON team_tournament(leader_uid);

-- =====================================================
-- TEAM TOURNAMENT MEMBERS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS team_tournament_members (
    uid SERIAL PRIMARY KEY,
    team_uid INTEGER NOT NULL REFERENCES team_tournament(uid) ON DELETE CASCADE,
    entity_uid INTEGER NOT NULL REFERENCES entities(uid) ON DELETE CASCADE,
    entity_name VARCHAR(50),
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(team_uid, entity_uid)
);

CREATE INDEX idx_team_tournament_members_team_uid ON team_tournament_members(team_uid);

-- =====================================================
-- CREATE INDEXES FOR PERFORMANCE
-- =====================================================
CREATE INDEX idx_entities_class ON entities(class);
CREATE INDEX idx_entities_level ON entities(level);
CREATE INDEX idx_entities_map_id ON entities(map_id);
CREATE INDEX idx_items_plus ON items(plus);
CREATE INDEX idx_items_bless ON items(bless);
CREATE INDEX idx_items_socket_one ON items(socket_one);
CREATE INDEX idx_items_socket_two ON items(socket_two);

-- =====================================================
-- cq_magictype TABLE (skill / magic-type definitions)
-- Column set matches Nyx.AttackEngine's DapperSkillRepository
-- SELECT, so the combat engine can load it via cq_magictype.
-- =====================================================
CREATE TABLE IF NOT EXISTS cq_magictype (
    id INTEGER PRIMARY KEY,
    type SMALLINT NOT NULL,
    level SMALLINT NOT NULL,
    sort SMALLINT NOT NULL DEFAULT 0,
    name VARCHAR(64) NOT NULL DEFAULT '',
    crime BOOLEAN NOT NULL DEFAULT FALSE,
    ground BOOLEAN NOT NULL DEFAULT FALSE,
    multi BOOLEAN NOT NULL DEFAULT FALSE,
    target SMALLINT NOT NULL DEFAULT 0,
    need_level INTEGER NOT NULL DEFAULT 0,
    use_mp INTEGER NOT NULL DEFAULT 0,
    power INTEGER NOT NULL DEFAULT 0,
    intone_speed INTEGER NOT NULL DEFAULT 0,
    percent INTEGER NOT NULL DEFAULT 0,
    range INTEGER NOT NULL DEFAULT 0,
    distance INTEGER NOT NULL DEFAULT 0,
    status INTEGER NOT NULL DEFAULT 0,
    need_prof SMALLINT NOT NULL DEFAULT 0,
    need_exp INTEGER NOT NULL DEFAULT 0,
    need_time INTEGER NOT NULL DEFAULT 0,
    weapon_subtype SMALLINT NOT NULL DEFAULT 0,
    use_ep INTEGER NOT NULL DEFAULT 0,
    use_item INTEGER NOT NULL DEFAULT 0,
    use_item_num INTEGER NOT NULL DEFAULT 0,
    next_magic INTEGER NOT NULL DEFAULT 0,
    status_data0 INTEGER NOT NULL DEFAULT 0,
    status_data1 INTEGER NOT NULL DEFAULT 0,
    status_data2 INTEGER NOT NULL DEFAULT 0,
    attr_type SMALLINT NOT NULL DEFAULT 0,
    attr_power INTEGER NOT NULL DEFAULT 0,
    target_num SMALLINT NOT NULL DEFAULT 0,
    width INTEGER NOT NULL DEFAULT 0,
    coldtime INTEGER NOT NULL DEFAULT 0,
    atk_interval INTEGER NOT NULL DEFAULT 0,
    first_magic INTEGER NOT NULL DEFAULT 0,
    combo_delay INTEGER NOT NULL DEFAULT 0,
    combo_timeout INTEGER NOT NULL DEFAULT 0,
    UNIQUE(type, level)
);

CREATE INDEX idx_cq_magictype_type_level ON cq_magictype(type, level);

-- =====================================================
-- INSERT DEFAULT CONFIGURATION
-- =====================================================
INSERT INTO configuration (server_name, server_ip, server_port, max_players, item_uid, guild_id, union_id, server_kingdom)
VALUES ('Nyx Server', '0.0.0.0', 5816, 1000, 1, 1, 1, 0)
ON CONFLICT DO NOTHING;

-- =====================================================
-- GRANT PERMISSIONS (if needed)
-- =====================================================
-- GRANT ALL PRIVILEGES ON DATABASE nyx TO postgres;
-- GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO postgres;
-- GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO postgres;

-- =====================================================
-- DONE! Database schema created successfully.
-- =====================================================
