# Ignore first 10% (200ns) of trajectory
start_time="200000"
out_file="1433bb_rmsf_start200ns.xvg"

# Provide an index file with a group containing only 14-3-3 backbone atoms
gmx rmsf -f production_fit.xtc -s production.tpr -n index.ndx -o $out_file -b $start_time -res
