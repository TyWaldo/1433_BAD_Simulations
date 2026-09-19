# Command used to create 14-3-3Z backbone RMSF .xvg files
# But ran on full trajectories for publication, not truncated ones
# Ignores first 10% (200ns) of trajectory
start_time="200000"
out_file="1433bb_rmsf_start200ns.xvg"

echo "19" | gmx rmsf -f production.xtc -s production.tpr -n index.ndx -o $out_file -b $start_time -res
