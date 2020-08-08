# echo -ne '\n' | ssh-keygen -t rsa -b 4096 -C "l.martin.rosello@gmail.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# curl -u "l.martin.rosello@gmail.com" --data '{"title":"llaveSSH","key":"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDHT6m/OllNfPHJzYUcwr6Ulghj8NDjADuM/fZ2bP7CKjrjOZa175aUDtStuBZbuNGlkKonDvTsWAwaqznxbOXEeDAx1nXE78/bnzCvWYowRaTx8KCsHC75lHgpdSaEU4SQbw1WqMwm9CGMnwNWyFrbuPqQtpmRd1fx1Lm7Rd/kUzC5M/p5atT8Jem8vtnV2cWuZPfIT3SlMByqToqEVu8eD915RyIhMSzdI9Jh39fBRMqLmB7uNt8ApClEUdjsrXVFD+QFc+ORXs4Yk26F17b7CssOuRhGm0AlKqasv3K+5ippob1PdzQQ22FIjSnEqoZnhCP7HQ4tpywzGiWho29TV6cQTd5PD0bQEIjNctybF+ClSGS43jg96FvIHDcbwh4Wr9UMK6tY5W5ILW/qK3QpckaGCaybQnXwIBb2De2gNtEEWFaQbYccYdfDOCT17J93Tn3rbI4BTjSXP6SRkAZab0jMdrte/PFtY4wBlfOgVpErzzlqF52BMT9lZIsQKLDOXvXFHCJLahZ7ARy6kW/V9chPHU6zGmFaSsptbbq7B+c1zP0tKiThn191Vkhj49GPbiH7a1gK5uuRCwO6o3+H3IN9S14JR3DoOIGgDax8YyQ17boBEKcQp9Rbw6Y/vVIPTY2Im/rr4RQeFU9ApJcNQckyGrI3M3JkZ+xlDS7IZw== l.martin.rosello@gmail.com"}' https://api.github.com/user/keys

# cat ~/.ssh/id_rsa.pub

# git config --global user.email "l.martin.rosello@gmail.com"