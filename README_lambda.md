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

#### Commands

```
python train.py \
   --dataset_name llff \
   --root_dir ~/nerf/data/nerf_llff_data/test1 \
   --N_importance 64 --img_wh 1024 683 \
   --num_epochs 20 --batch_size 1024 \
   --optimizer adam --lr 5e-4 \
   --lr_scheduler steplr --decay_step 10 20 --decay_gamma 0.5 \
   --exp_name exp \
   --num_gpus 2


CUDA_VISIBLE_DEVICES=0 python eval.py \
   --root_dir /tmp/ubuntu/data_consiliencecap/test1 \
   --dataset_name llff --scene_name test1 \
   --img_wh 1024 683 --N_importance 64 --ckpt_path /tmp/ubuntu/nerf_pl/ckpts/exp_test1/epoch=29.ckpt


python extract_color_mesh.py \
    --root_dir ~/nerf/data/nerf_llff_data/test1 \
    --dataset_name llff \
    --scene_name test1 \
    --img_wh 1024 683 \
    --ckpt_path /home/ubuntu/nerf_pl/ckpts/exp/epoch=16.ckpt \
    --N_grid 256 \
    --sigma_threshold 0. \
    --occ_threshold 0.
```


