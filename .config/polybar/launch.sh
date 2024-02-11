!#/bin/bash

# Завершить текущий экземпляры polybar
killall -q polybar

# Ожидание полного завершения работы процессов 
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Запуск Polybar со стандортным расположением конфигурационного файла в ~/.config/polybar/config.ini
polybar bar &

echo "Polybar загрузился..."


