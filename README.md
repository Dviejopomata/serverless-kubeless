Steps
```
# install dependencies
yarn install
yarn add global serverless
# update path to have serveless
make package
make deploy
# invoke markdown function to return html
make markdown
# invoke hello
make hello

# change V1.0 to V1.1
sed -i -e 's@1.0@'"1.1"'@' handler.py
make update_hello
# wait...
make hello
# now you should see V1.1
```