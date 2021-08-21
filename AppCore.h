#ifndef APPCORE_H
#define APPCORE_H

#include <QObject>
#include <QMap>


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
    int randomize_monster();
    int randomize_rarity();

    unsigned long long m_counter {0};
    unsigned long long life {0};
    unsigned long long counter_change {1};
    int random_number {0};
    QString name_new_monster;
    QVector<QVector<QPair<QString, unsigned long long>>> monster_data;
    QMap<QString, int> monster_counter;
    QVector<QString> rarity_data;
};

#endif // APPCORE_H
