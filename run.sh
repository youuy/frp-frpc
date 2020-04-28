if [ ! -d "./config" ]; then
  mkdir -p config
fi
if [ ! -d "./logs" ]; then
  mkdir -p logs
fi
if [ ! -f "./config/frpc.ini" ]; then
  cp ./frpc_full.ini ./config/frpc.ini
fi
if [ ! -f "./logs/frpc.log" ]; then
  touch ./logs/frpc.log
fi

./frpc -c ./config/frpc.ini
