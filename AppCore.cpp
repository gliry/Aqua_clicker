#include "AppCore.h"
#include <cstdlib>
#include <QRandomGenerator>
#include <QDebug>

QRandomGenerator *random_generator = QRandomGenerator::global();

AppCore::AppCore(QObject* parent) : QObject(parent)
{
    monster_data = {{"Crab", 10}, {"Jellyfish", 5}, {"Shrimp", 7}, {"Snail", 15}};
}

void AppCore::receiveFromQml()
{
    m_counter += counter_change;

    if (m_counter >  life)
    {
        m_counter = 0;

        int id_new_monster = randomize_monster();
        name_new_monster = monster_data[id_new_monster].first;
        life = monster_data[id_new_monster].second;
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
    int number = random_generator->bounded(1, 100);
    qDebug() << number;
    if (number < 50)
    {
        return 0; // Crab
    }
    else if (number < 75)
    {
        return 1; // Jellyfish
    }
    else if (number < 90)
    {
        return 2; // Shrimp
    }
    else
    {
        return 3; // Snail
    }
}
