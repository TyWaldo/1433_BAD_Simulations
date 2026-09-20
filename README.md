Initial configuration, topology, and mdp files are provided so that simulations can be independently run.

For the sake of file size, published trajectories have been thinned to include only protein atoms with one frame every nanosecond. Full trajectories are available upon request. Published trajectories have been treated with the "mol" periodic boundary condition, and then fit to the initial frame for ease of viewing. The view_trajectory.pdb files contain the same atoms as the thinned trajectories and can be opened in ChimeraX followed by one of the trajectory files to watch the trajectory.

Code used to analyze the simulations and produce plots are provided as a Jupyter notebook. These plots may be marginally different from those published as a result of using the higher timestep trajectories. A shell script with an example of the gromacs RMSF command used is also provided, and the resulting .xvg files from running on the full trajectories.
