#ifndef ARDUINO_H
#define ARDUINO_H

#include <QObject>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QHash>
#include <QList>
#include <QTextStream>
#include <QDebug>


class Arduino : public QObject
{
    Q_OBJECT
private:
    QSerialPort *serial;
    QHash<size_t, QSerialPortInfo> serial_disponibles;

    bool conectar(QSerialPortInfo &port);
    void run();
    qint32 baudRate;
public:
    explicit Arduino();
    bool conectar(size_t indice);
    Q_INVOKABLE bool desconectar();
    void enviar(const QByteArray &bytes);
    void disponibles();

    qint32 getBaudRate() const;
    void setBaudRate(const qint32 &value);

    QHash<size_t, QSerialPortInfo> _getSerial_disponibles() const;
    Q_INVOKABLE QList<QString> getSerial_disponibles() const;
    Q_INVOKABLE QList<int> bautRates() const;
    Q_INVOKABLE bool conectar(QString puerto, int baudrate);
    void setSerial_disponibles(const QHash<size_t, QSerialPortInfo> &value);

signals:
    void datos(QString datos);

public slots:
    void lectura();
};

#endif // ARDUINO_H
