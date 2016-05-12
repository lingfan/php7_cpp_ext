dnl $Id$
dnl config.m4 for extension agame

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(agame, for agame support,
dnl Make sure that the comment is aligned:
dnl [  --with-agame             Include agame support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(agame, whether to enable agame support,
dnl Make sure that the comment is aligned:
[  --enable-agame           Enable agame support])

if test "$PHP_AGAME" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-agame -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/agame.h"  # you most likely want to change this
  dnl if test -r $PHP_AGAME/$SEARCH_FOR; then # path given as parameter
  dnl   AGAME_DIR=$PHP_AGAME
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for agame files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       AGAME_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$AGAME_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the agame distribution])
  dnl fi

  dnl # --with-agame -> add include path
  dnl PHP_ADD_INCLUDE($AGAME_DIR/include)

  dnl # --with-agame -> check for lib and symbol presence
  dnl LIBNAME=agame # you may want to change this
  dnl LIBSYMBOL=agame # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $AGAME_DIR/$PHP_LIBDIR, AGAME_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_AGAMELIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong agame lib version or lib not found])
  dnl ],[
  dnl   -L$AGAME_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(AGAME_SHARED_LIBADD)
	PHP_REQUIRE_CXX()
	PHP_NEW_EXTENSION(agame, agame.cpp, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
