file(REMOVE_RECURSE
  "bin/kernel.bin.pdb"
  "bin/kernel.bin"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/kernel.bin.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
