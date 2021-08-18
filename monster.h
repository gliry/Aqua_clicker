#ifndef APPCORE_H
#define APPCORE_H

#include <QObject>


class Monster : public QObject
{
    Q_OBJECT
public:
    explicit Monster(QObject *parent = nullptr);

signals:


public slots:


private:

};

#endif // APPCORE_H
