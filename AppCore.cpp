#include "AppCore.h"
#include <cstdlib>
#include <QRandomGenerator>
#include <QDebug>

QRandomGenerator *random_generator = QRandomGenerator::global();

AppCore::AppCore(QObject* parent) : QObject(parent)
{
    rarity_data = {"common", "uncommon", "rare", "mythical", "epic", "legendary", "immortal", "silver", "gold"};

    monster_data = {{{"Crab_common", 5}, {"Crab_uncommon", 10}, {"Crab_rare", 15},
                    {"Crab_mythical", 20}, {"Crab_epic", 25}, {"Crab_legendary", 30},
                    {"Crab_immortal", 35}, {"Crab_silver", 40}, {"Crab_gold", 50}},

                    {{"Jellyfish_common", 5}, {"Jellyfish_uncommon", 10}, {"Jellyfish_rare", 15},
                    {"Jellyfish_mythical", 20}, {"Jellyfish_epic", 25}, {"Jellyfish_legendary", 30},
                    {"Jellyfish_immortal", 35}, {"Jellyfish_silver", 40}, {"Jellyfish_gold", 50}},

                    {{"Shrimp_common", 5}, {"Shrimp_uncommon", 10}, {"Shrimp_rare", 15},
                    {"Shrimp_mythical", 20}, {"Shrimp_epic", 25}, {"Shrimp_legendary", 30},
                    {"Shrimp_immortal", 35}, {"Shrimp_silver", 40}, {"Shrimp_gold", 50}},

                    {{"Snail_common", 5}, {"Snail_uncommon", 10}, {"Snail_rare", 15},
                    {"Snail_mythical", 20}, {"Snail_epic", 25}, {"Snail_legendary", 30},
                    {"Snail_immortal", 35}, {"Snail_silver", 40}, {"Snail_gold", 50}},

                    {{"Turtle_common", 5}, {"Turtle_uncommon", 10}, {"Turtle_rare", 15},
                    {"Turtle_mythical", 20}, {"Turtle_epic", 25}, {"Turtle_legendary", 30},
                    {"Turtle_immortal", 35}, {"Turtle_silver", 40}, {"Turtle_gold", 50}}

                   };

    monster_counter = {{"Crab_common", 0}, {"Crab_uncommon", 0}, {"Crab_rare", 0},
                        {"Crab_mythical", 0}, {"Crab_epic", 0}, {"Crab_legendary", 0},
                        {"Crab_immortal", 0}, {"Crab_silver", 0}, {"Crab_gold", 0},

                        {"Jellyfish_common", 0}, {"Jellyfish_uncommon", 0}, {"Jellyfish_rare", 0},
                        {"Jellyfish_mythical", 0}, {"Jellyfish_epic", 0}, {"Jellyfish_legendary", 0},
                        {"Jellyfish_immortal", 0}, {"Jellyfish_silver", 0}, {"Jellyfish_gold", 0},

                        {"Shrimp_common", 0}, {"Shrimp_uncommon", 0}, {"Shrimp_rare", 0},
                        {"Shrimp_mythical", 0}, {"Shrimp_epic", 0}, {"Shrimp_legendary", 0},
                        {"Shrimp_immortal", 0}, {"Shrimp_silver", 0}, {"Shrimp_gold", 0},

                        {"Snail_common", 0}, {"Snail_uncommon", 0}, {"Snail_rare", 0},
                        {"Snail_mythical", 0}, {"Snail_epic", 0}, {"Snail_legendary", 0},
                        {"Snail_immortal", 0}, {"Snail_silver", 0}, {"Snail_gold", 0}

                       };
}

void AppCore::receiveFromQml()
{
    m_counter += 1;

    if (m_counter >  life)
    {
        m_counter = 0;
        monster_counter[name_new_monster] += 1;

        int id_new_monster = randomize_monster();
        int id_new_rarity = randomize_rarity();

        name_new_monster = monster_data[id_new_monster][id_new_rarity].first;
        life = monster_data[id_new_monster][id_new_rarity].second;
        emit monsterKilled(name_new_monster);
    }
    emit sendToQml(m_counter);
}

void AppCore::set_life(int new_life)
{
    life = new_life;
}

void AppCore::set_counter_change(int new_counter_change)
{
    counter_change = new_counter_change;
}

int AppCore::randomize_monster()
{
    int number_monster = random_generator->bounded(1, 100);
    qDebug() << number_monster << " Monster";


    if (number_monster < 40)
    {
        return 0; // Crab
    }
    else if (number_monster < 60)
    {
        return 1; // Jellyfish
    }
    else if (number_monster < 75)
    {
        return 2; // Shrimp
    }
    else if (number_monster < 90)
    {
        return 3; // Snail
    }
    else
    {
        return 4; // Turtle
    }
}

int AppCore::randomize_rarity()
{
    int number_rarity = random_generator->bounded(1, 1000);
    qDebug() << number_rarity << " Rarity";

    if (number_rarity < 350)
    {
        return 0; // common
    }
    else if (number_rarity < 600)
    {
        return 1; // uncommon
    }
    else if (number_rarity < 800)
    {
        return 2; // rare
    }
    else if (number_rarity < 910)
    {
        return 3; // mythical
    }
    else if (number_rarity < 960)
    {
        return 4; // epic
    }
    else if (number_rarity < 980)
    {
        return 5; // legendary
    }
    else if (number_rarity < 990)
    {
        return 6; // immortal
    }
    else if (number_rarity < 997)
    {
        return 7; // silver
    }
    else
    {
        return 8; // gold
    }
}
