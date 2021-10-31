git add .
git commit -m "new post"
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
echo "1. Already open proxy with 127.0.0.1:7890"

git push origin master
hugo --theme="gokarna" --baseUrl="https://ncepuzs.github.io" --buildDrafts
echo "2. Already complete deploy on GitHub"

unset http_proxy
unset https_proxy

echo "Already close proxy"
