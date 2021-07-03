#!/bin/bash
python3 main.py \
--name=3dshapes_base \
--alg=BetaVAE \
--dset_dir=/mnt/data/home/neelan/data/3dshapes \
--dset_name=shapes3d \
--traverse_z=true \
--encoder=SimpleGaussianConv64 \
--decoder=SimpleConv64 \
--z_dim=10 \
--use_wandb=false \
--loss_term=rkl \
--max_iter=100 \
--evaluate_iter=50 \
--recon_iter=50 \
--traverse_iter=50 \
--batch_size=64 \
--num_workers=1 \
--w_recon=1.0 \
--w_kld=1.0 \
--rkl_kld=1.0 \
--evaluation_metric mig dci \
>logs/3dshapes_rkl_test.out \
