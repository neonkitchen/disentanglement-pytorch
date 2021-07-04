#!/bin/bash
python3 main.py \
--name=3dshapes_allmetrics \
--alg=BetaVAE \
--dset_dir=/home/neelan/dev/data/3dshapes \
--dset_name=shapes3d \
--traverse_z=true \
--encoder=SimpleGaussianConv64 \
--decoder=SimpleConv64 \
--z_dim=10 \
--use_wandb=true \
--w_kld=1.0 \
--max_iter=100 \
--print_iter=10 \
--recon_iter=50 \
--evaluation_metric dci mig factor_vae_metric sap_score irs beta_vae_sklearn \
--evaluate_iter=100 \
--batch_size=16 \
--num_workers=8 \
>/home/neelan/dev/disentanglement-pytorch/logs/3dshapes_allmetrics.out \
&
