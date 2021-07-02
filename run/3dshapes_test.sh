#!/bin/bash
nohup python3 main.py \
--name=3dshapes_base \
--alg=BetaVAE \
--dset_dir=/mnt/data/home/neelan/disentanglement-pytorch/data/3dshapes \
--dset_name=shapes3d \
--traverse_z=true \
--encoder=SimpleGaussianConv64 \
--decoder=SimpleConv64 \
--z_dim=10 \
--use_wandb=false \
--w_kld=1.0 \
--max_iter=100 \
--batch_size=64 \
--num_workers=16 \
>nohup/3dshapes_base.out \
&
