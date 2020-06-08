# Lambda Notes

#### Install

```
git clone --recursive https://github.com/chuanli11/nerf_pl.git


# For the sake of avoiding having root writing NFS mounted drive, it is better to work in some local filesystem (for example, /tmp/foo)

# Install colmap from source (requires for CUDA support)
# Follow the instructions here: https://colmap.github.io/install.html#linux

# Install LLFF
# Follow the instructions here: https://github.com/Fyusion/LLFF#manual-installation

git clone --recursive https://github.com/chuanli11/nerf_pl

# Install nerf_pl
# Follow the instructions here: https://github.com/chuanli11/nerf_pl#software

```



#### Note

* Sometimes multi-gpu training freezes while GPU ulitization is 100%. This may somehow related to inpu data. Re-run LLFF eliminates the problem.
* running `eval.py` can also freeze the program.
* `testall` does not pass the LLFF stage
* `test2` produces poor rendering results
