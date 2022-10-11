if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Inmyveinz/finalattempt.git /finalattempt
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /finalattempt
fi
cd /Ajax
pip3 install -U -r requirements.txt
echo "Starting wlml...."
python3 bot.py
