#!/bin/bash
nohup python3 main.py \
--aicrowd_challenge=false \
--name=shape_again \
--alg=BetaVAE \
--traverse_z=true \
--traverse_c=true \
--dset_dir=/home-mscluster/npather/disentangle/data/3dshapes/ \
--dset_name=shapes3d \
--encoder=PadlessGaussianConv64 \
--decoder=SimpleConv64 \
--discriminator=SimpleDiscriminator \
--z_dim=10 \
--use_wandb=true \
--w_kld=3.0 \
--w_tc=0.0 \
--lr_G=0.001 \
--lr_scheduler=ReduceLROnPlateau \
--lr_scheduler_args mode=min factor=0.95 patience=1 min_lr=0.00005 \
--max_c=25 \
--iterations_c=100 \
--evaluation_metric mig dci \
--max_iter=2000 \
--evaluate_iter=10 \
--recon_iter=10 \
--traverse_iter=10 \
--print_iter=10 \
--alg=BetaVAE \
--loss_terms \
--controlled_capacity_increase=false \
--batch_size=64 \
>shape_again.out \
&
