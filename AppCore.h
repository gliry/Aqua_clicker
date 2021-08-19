#ifndef APPCORE_H
#define APPCORE_H

#include <QObject>


class AppCore : public QObject
{
    Q_OBJECT
public:
    explicit AppCore(QObject *parent = nullptr);
    void set_life(int new_life);
    void set_counter_change(int new_counter_change);

signals:
    void sendToQml(int count);
    void monsterKilled(QString name_new_monster);

public slots:
    void receiveFromQml();

private:
    unsigned long long m_counter {0};
    unsigned long long life {0};
    unsigned long long counter_change {1};
    QString name_new_monster;
    QVector<QPair<QString, unsigned long long>> monster_data;
};

#endif // APPCORE_H
