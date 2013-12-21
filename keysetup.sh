#!/bin/bash
if [ -d "~/.ssh" ]; then
  rm -rf ~/.ssh
  mkdir ~/.ssh
fi
if [ ! -d "~/.ssh" ]; then
  mkdir ~/.ssh
fi
cd ~/.ssh
echo “-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: AES-128-CBC,120FD9953CC697D7C5A77C17108DE49F

94nOMXNuFFck2SxP+jRFRMzSxhUova+cFswYjN+3G/J+1orR1+iT5MHbPF7nrO9I
ZawnZGphX6bSfR33lYispMJtkMkNTeZEB+STMaXvgCbUksQjwqA24wvlcUPaRrRS
G7/9RslG10yQAzcbBn4y6bQjEqBmsysGfXYklS/JnsLbcZ32VNuKyp/Tc606EXp0
3/u7pl8ZKvM20yg1BzqRImTxiqsfoj+T2QOEA+qEo3eZG01KxYxC8JbtZQ6xZI76
O505yOq+9P9yNobuQDwwTq8IaLHRPr7PPC8wo/CKo8ZIcEPUbvutjcznmNfQPhaR
YR5IroPsT65bGRmKZzurvV7utybRCBia5iW566uQ202uNTd0+pRHuT9QGodq8j5a
2gwRfdPZ+5Wx4jUMO+prxfGwGukbtt370zIgpkB33vlkHt0d6WeVJkllKtZaIXrV
qOIteRhNI/dEDpQPRoSX9Xbab1TfEeWY2WpTiBu9JXqdOPRl4L/CWEqf8pqA0fUd
jjzAcYasvBsA5Ty8/10GTKMq+gRXjg4gDHx14+AwA924X/i1Wyv/HRl9NVt994CY
xPfWydhGVrmDHkhSXQiZbmOMYnNeWC2Dlyujt2+kUveoRFQcUX/F1n+UUkUkiJ1p
mK94J/pFcHCh2KiY1WvFbKgyb5JyYv3SDnlcU6BZonoRC3oI5sLxyP2771XLFCe7
O4FCbRuUnkmhbayQYAlOp4eMIZsAE2VeAiC5QfpUo5go6f8N8qJRhWEhIVwTw63e
TqXINBbW3GpjEGyANOYA5oGcEWt6WrloaKsIcnNdySDQWNaIawWOagicCxbvGzJn
4wnGH4Ide3dZCFRDP1qayhOBqMSeC4OqkQxe1PK04o2ep+1Hze4+7xVc3LAlSTRE
QTl3RUns42lG88ECrCAa8wLO9OEIokjaMwA4kLFihQJPx3cIgQ87Km2Sa1zo7x2j
pBYrVPw6KgIdhgP2+bDtW71SRlKnROsNJWwYh6YABc8OyCxZNpsATKsu+Jrc4rzO
4bLryd5j9y2BSXIiS136YvuMiKPzGtI4QBlA/+R3S1hCFjIQ6vD3B3vliIKFjRlk
JlntcZQFHEzuaW4m/dxmoCmNDj+6cLNfrZTmzIxh6H9vNd+kELkuH+mALlswNT60
2ik+GAGxzLDZrhNpQ22dgL4NgYrYopD/+eDFbSSbkk2OacaYCAAaNw1wuOskEmC2
h9GTAEwyk+z3Io1kfNu1rdFzsyBCaMmkmrawKminxmKQf4f/FN5RwEvmX/MVb2Hi
ThXf8Dq1BDcitJDkhvHxrppt67jROEayXmjVTOS5PuoqI7nJhIQMG89+LezJknBC
inACJVPC8+7phS8Vk7q0MSloKf2/H2XLo2517PXJd/bDWY/5WbTpUer/yIZBrZ7V
AwnbHhnQpY7MLlgwKSk6CBE2bnsB0MwoGee5THlpWwUg9j2kuM08FScLwv4PdRg8
mfqgx11tjD1G8pvWPwFmjT6kbU3bVp8sgosuwO5178rpB5PX91XDZefZmG1wZvB0
4cknT25dvuQVj3jFS7N4rZZJ9gif3MvC1TLHsnNzLTyfiuQkTE0tgRixjwj0omfv
-----END RSA PRIVATE KEY-----
” >> danijelj_rsa
echo “ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHn04Z0YQg1ONMpdrTKC5ecGMyLUKf1fJXPvMwVdoDjRxTtqExSzpF9NKhMpwPP8Ey/jHaEtq2NQT/9s3rakyayiLY7SdhnIK9EgaMQcfUQjgb3ABV3TtIbXBMBELtXa+zSeKJ7oVWQJCMemah0I9r+lS+U+gymmAJwtZ6dD6bxPI6vO/Z6/Ff6yOdWRmYUBF2PdcK22YUR6p+VXGVSD441XX2cm7W1x726ed5rHd5uFBLJLBRyLYMhEB2bokn81UbR80ZDE6n9QIFicQf36lKgPI09awQc5k51JEldE4TcgaqYCJjLPEvvfZnwLLHuDofK6cMEK+ft3HrX05nGErZ admin@danijelj.com
” >> danijelj_rsa.pub
cat ~/.ssh/danijelj_rsa.pub >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
chmod 600 ~/.ssh/danijelj_rsa
chmod 644 ~/.ssh/danijelj_rsa.pub
eval `ssh-agent -s`
ssh-add ~/.ssh/danijelj_rsa
