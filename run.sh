nohup python3 main.py \
--name=base_dsprites \
--alg=BetaVAE \
--dset_dir=/mnt/data/home/neelan/data/dsprite \
--dset_name=dsprites_full \
--traverse_z=true \
--encoder=SimpleGaussianConv64 \
--decoder=SimpleConv64 \
--z_dim=8 \
--w_kld=1 \
--use_wandb=false \
>base_dsprites.out \
&