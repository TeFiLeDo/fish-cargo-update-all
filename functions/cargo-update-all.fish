function cargo-update-all -d 'Update all binaries installed with cargo'
    for crate in (cargo install --list | rg -v "^ " | rg -o "^[^ ]*")
        cargo install $crate
    end
end
