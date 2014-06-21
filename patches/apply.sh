#!/bin/sh

MYABSPATH=$(readlink -f "$0")
PATCHBASE=$(dirname "$MYABSPATH")
CMBASE=$(readlink -f "$PATCHBASE/../../../../")

for i in $(find "$PATCHBASE"/* -iname *.patch); do
	PATCHTARGET=$(dirname "$i")
	PATCHTARGET=$(echo $PATCHTARGET | sed "s:$PATCHBASE/::")
	cd "$CMBASE/$PATCHTARGET" || exit 1
	git am -3 "$i" || exit 1
done

