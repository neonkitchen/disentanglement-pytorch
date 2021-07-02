#!/bin/bash
nohup python3 main.py \
--name=base_dsprites \
--alg=BetaVAE \
--dset_dir=/mnt/data/home/neelan/data/dsprites \
--dset_name=dsprites_full \
--traverse_z=true \
--encoder=SimpleGaussianConv64 \
--decoder=SimpleConv64 \
--z_dim=10 \
--use_wandb=false \
--w_kld=1.0 \
--max_iter=100 \
--batch_size=64 \
--num_workers=16 \
--pin_memory=True \
>nohup/dsprites_base.out \
