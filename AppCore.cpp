#include "AppCore.h"

AppCore::AppCore(QObject* parent) : QObject(parent)
{

}

void AppCore::receiveFromQml()
{
    m_counter += 1;
    emit sendToQml(m_counter);
}
