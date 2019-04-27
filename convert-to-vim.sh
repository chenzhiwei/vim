#!/bin/bash

KERNEL=$(uname -s)

NVIM=$(which nvim)

if [[ "$NVIM" == "" ]]; then
    echo No nvim found
    exit 1
fi

## vimdiff & view
cat <<'EOF' > /usr/local/bin/vimdiff
#!/bin/bash

exec nvim -d "$@"
EOF

cat <<'EOF' > /usr/local/bin/view
#!/bin/bash

exec nvim -R "$@"
EOF

chmod +x /usr/local/bin/vimdiff
chmod +x /usr/local/bin/view

## convert vim/vi/editor to nvim
ln -sf $NVIM /usr/local/bin/vi
ln -sf $NVIM /usr/local/bin/vim
ln -sf $NVIM /usr/local/bin/editor

## remove vimdiff.nvim
rm -f /usr/bin/vimdiff.nvim
