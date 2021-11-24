sudo apt update
curl -s https://raw.githubusercontent.com/razumv/helpers/main/tools/install_node14.sh | bash
curl -s https://raw.githubusercontent.com/razumv/helpers/main/tools/install_docker.sh | bash
npm install -g @subql/cli
mkdir SubQ
cd SubQ
sudo subql init --starter HelloWorld
cd HelloWorld
npm install
npm run-script codegen
npm install -g npm
npm run-script build
docker-compose up -d
docker-compose logs -f --tail=100
sudo apt install git -y
git config --global user.name "dreamstaker"
git config --global user.email "skitkina174@gmail.com"
eval $(ssh-agent -s)
ssh-keygen
cat ~/.ssh/id_rsa.pub
git init
git remote add origin git@github.com:dreamstaker/SubqlHello.git
git add .
git commit -m "init project"
git branch -M main
git push -u origin main
