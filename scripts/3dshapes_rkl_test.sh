#!/bin/bash
python3 main.py \
--name=3dshapes_test \
--alg=BetaVAE \
--dset_dir=/Users/neelanpather/dev/data/3dshapes \
--dset_name=shapes3d \
--traverse_z=true \
--encoder=SimpleGaussianConv64 \
--decoder=SimpleConv64 \
--z_dim=10 \
--use_wandb=true \
--loss_term=rkl \
--max_iter=100 \
--evaluate_iter=50 \
--recon_iter=50 \
--traverse_iter=50 \
--batch_size=1 \
--num_workers=1 \
--w_recon=1.0 \
--w_kld=1.0 \
--w_rkld=1.0 \
--evaluation_metric mig dci \
>logs/3dshapes_rkl_test.out \
