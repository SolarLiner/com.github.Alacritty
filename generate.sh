set -ex
poetry install
git submodule update --init
.venv/bin/python tools/cargo/flatpak-cargo-generator.py -d source/Cargo.lock -o cargo-sources.json
