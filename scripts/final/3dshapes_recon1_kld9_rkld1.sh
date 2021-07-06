#!/bin/bash
python3 main.py \
--name=3dshapes_recon1_kld9_rkld1 \
--alg=BetaVAE \
--dset_dir=/home/neelan/dev/data/3dshapes \
--dset_name=shapes3d \
--traverse_z=true \
--encoder=SimpleGaussianConv64 \
--decoder=SimpleConv64 \
--z_dim=10 \
--use_wandb=true \
--w_kld=9.0 \
--loss_terms=rkl \
--w_rkld=1 \
--max_iter=3800 \
--print_iter=100 \
--recon_iter=100 \
--evaluation_metric dci mig factor_vae_metric sap_score irs beta_vae_sklearn \
--evaluate_iter=2000 \
--batch_size=128 \
--num_workers=8 \
--wandb_name=MSc_Final \

