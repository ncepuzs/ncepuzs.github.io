cd ..
hugo --theme="gokarna" --baseUrl="https://ncepuzs.github.io" --buildDrafts
echo "================1. Already complete deployment========================="
cd public
# git fetch
# git pull
git add .
git commit -m "new post"
# export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 #all_proxy=socks5://127.0.0.1:7890
echo "================2. Already open proxy with 127.0.0.1:7890=============="

git push origin master
echo "================3. Already push to GitHub=============================="

# unset http_proxy
# unset https_proxy

echo "================4. Already close proxy================================="
