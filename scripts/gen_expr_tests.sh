#!/bin/bash
# Wrapper around gen_expr_test.sh that looks at all .ll files in a directory
# and replaces it with a new one by running expr-llvm.

if [[ $# -ne 2 ]]
then
   echo "Usage: $0 scilla_compiler_root testsuite_dir"
   exit 1
fi

scilla_compiler_root=$1
testsuite_dir=$2

if [[ ! -e ${scilla_compiler_root}/bin/expr-llvm || ! -d ${testsuite_dir}/expr ]]
then
    echo "${scilla_compiler_root}/bin/expr-llvm or ${testsuite_dir}/expr not found"
    exit 1
fi

for llfile in "${testsuite_dir}"/expr/*.ll
do
    llfile_base=$(basename "$llfile" .ll)
    if [ "$(basename "$llfile_base" .dbg)" == "$llfile_base" ]
    then
        inputf=${scilla_compiler_root}/tests/codegen/expr/${llfile_base}.scilexp
        if [[ ! -f ${scilla_compiler_root}/tests/codegen/expr/${llfile_base}.scilexp ]]
        then
            echo "$inputf input file not found"
        else
            ./gen_expr_test.sh "$inputf" > "$llfile"
            ./gen_expr_dtest.sh "$inputf" > "$testsuite_dir/expr/${llfile_base}.dbg.ll"
        fi
    fi
done
