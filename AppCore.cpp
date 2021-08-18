#include "AppCore.h"
#include <cstdlib>

AppCore::AppCore(QObject* parent) : QObject(parent)
{

}

void AppCore::receiveFromQml()
{
    m_counter += counter_change;

    if (m_counter >  life)
    {
        m_counter = 0;
        int id_new_monster = rand() % 2;
        if(id_new_monster == 0)
        {
            name_new_monster = "Crab";
        }
        else
        {
            name_new_monster = "Jellyfish";
        }

        emit monsterKilled(name_new_monster);

        if (id_new_monster == 0)
        {
            life = 10;
        }
        else
        {
            life = 5;
        }
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
