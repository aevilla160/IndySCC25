# Running

## Jetstream 2

```sh
mpirun -np 6  --host scc135-cpu1:2,scc135-cpu2:2,scc135-cpu3:2 --prefix ${MPI_HOME} xhpl    
```

On the login node, `echo $MPI_HOME` should return `/nfs/general/mpi/.tools/`

```sh
echo |cpp -fopenmp -dM |grep -i open
```

HPL Location

```sh
/nfs/general/hpl/bin
```

## Pinnacles (via SLURM)

> If running on interactive nodes, need password file.

