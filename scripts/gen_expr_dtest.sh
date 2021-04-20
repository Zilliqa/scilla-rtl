# Given a Scilla expression foo.scilexp and assuming its compiled LLVM-IR is in dgold/foo.scilexp.gold,
# generate a concat of the two with the Scilla code commented, for the result to be a parsable LLVM file.

# Same as gen_expr_test.sh, but uses "dgold" for debug gold files.

if [[ $# -ne 1 ]]
then
   echo "Usage: $0 expr.scilexp"
   exit 1
fi

while read -r p;
do
    echo "; $p"
done < "$1"

goldfile=$(dirname "$1")/dgold/$(basename "$1" .scilexp).scilexp.gold

cat "$goldfile"
