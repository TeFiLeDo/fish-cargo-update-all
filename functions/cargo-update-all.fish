function cargo-update-all -d 'Update all binaries installed with cargo'
    cargo install (cargo install --list | rg -v "^ " | rg -o "^[^ ]*")
end
