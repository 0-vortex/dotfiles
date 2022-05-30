# cd to root dir of git project
droot() {
  cd $(git rev-parse --show-toplevel)
}
