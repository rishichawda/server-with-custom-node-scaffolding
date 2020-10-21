pkg_name=node-scaffolding
pkg_origin=rishichawda
pkg_version="0.6.14"
pkg_maintainer="Rishi Chawda"
pkg_license=('Apache-2.0')
pkg_description="Habitat Plan Scaffolding for Node.js Applications"
pkg_deps=(core/tar core/rq core/jq-static core/gawk core/curl core/bc core/coreutils)
pkg_build_deps=(core/node/12.14.1 core/coreutils core/yarn)

do_build() {
  return 0
}

do_install() {
  find lib -type f | while read -r f; do
    install -D -m 0644 "$f" "$pkg_prefix/$f"
  done
}
