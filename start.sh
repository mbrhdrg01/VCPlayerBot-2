echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning master branch...."
  git clone https://github.com/mbrhdrg01/VCPlayerBot-2 /VCPlayerBot-2
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/mbrhdrg01/VCPlayerBot-2 -b $BRANCH /VCPlayerBot-2
fi
cd /VCPlayerBot-2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
