julia_include_dir = joinpath(match(r"(.*)(bin)", Sys.BINDIR).captures[1],"include","julia")
if !isdir(julia_include_dir)  # then we're running directly from build
	julia_base_dir_aux = splitdir(splitdir(Sys.BINDIR)[1])[1]  # useful for running-from-build
	julia_include_dir = joinpath(julia_base_dir_aux, "usr", "include" )
	julia_include_dir *= ";" * joinpath(julia_base_dir_aux, "src", "support" )
	julia_include_dir *= ";" * joinpath(julia_base_dir_aux, "src" )
end
print(julia_include_dir)

