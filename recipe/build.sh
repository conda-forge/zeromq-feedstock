source activate "${CONDA_DEFAULT_ENV}"

if [[ `uname` == 'Darwin' ]];
then
    export LIBRARY_SEARCH_VAR=DYLD_FALLBACK_LIBRARY_PATH
else
    export LIBRARY_SEARCH_VAR=LD_LIBRARY_PATH
fi


./autogen.sh
./configure \
  --prefix="${PREFIX}" \
  --with-libsodium="${PREFIX}" \
  --without-documentation
make
eval ${LIBRARY_SEARCH_VAR}="${PREFIX}/lib" make check
make install
