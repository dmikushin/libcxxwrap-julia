using Libdl
print(abspath(Libdl.dlpath((ccall(:jl_is_debugbuild, Cint, ()) != 0) ? "libjulia-debug" : "libjulia")))
